void WFRegisterTypeForItemClass(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = [v6 objectForKey:v5];
  v8 = NSClassFromString(&cfstr_Wflinkentityco.isa);
  v9 = NSClassFromString(&cfstr_Wflinkenumerat.isa);
  v10 = [v5 isEqualToClass:objc_opt_class()];
  v11 = [v5 isEqualToClass:NSClassFromString(&cfstr_Wflinkenumerat_0.isa)];
  v12 = v10 & [a2 isSubclassOfClass:v8];
  v13 = v11 & [a2 isSubclassOfClass:v9];
  if (v7 && (v12 & 1) == 0 && (v13 & 1) == 0)
  {
    v14 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315906;
      v18 = "WFRegisterTypeForItemClass";
      v19 = 2114;
      v20 = a2;
      v21 = 2114;
      v22 = v5;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_FAULT, "%s WFContent warning: %{public}@ is trying to register itself for %{public}@, but %{public}@ is already registered.", &v17, 0x2Au);
    }
  }

  if (v12)
  {
    v15 = v8;
  }

  else
  {
    v15 = a2;
  }

  if (v13)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  [v6 setObject:v16 forKey:v5];
}

uint64_t sub_21E1C119C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E1C1214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E1C44C4();
  *a1 = result;
  return result;
}

uint64_t sub_21E1C12C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E1C130C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E1C1448(char a1)
{
  if (a1)
  {
    return 0x526C616E69467369;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_21E1C1488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D25F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1C14C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E1D3430();
  *a1 = result;
  return result;
}

uint64_t sub_21E1C15A4()
{
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  sub_21E343A80();
  OUTLINED_FUNCTION_1_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21E1C164C()
{
  sub_21E343C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEB80E8);
  sub_21E343A80();
  OUTLINED_FUNCTION_1_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v2 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21E1C181C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_21E1C18B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21E1C1A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E1E0EEC();
  *a1 = result;
  return result;
}

uint64_t sub_21E1C1C68()
{

  OUTLINED_FUNCTION_387();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_21E1C1CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E21B13C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E1C1D44()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1D8C()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8BF0);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C1DEC()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C60);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1E34()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8C60);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C1EB8()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8CD0);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1F00()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8CD0);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C1F90()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D50);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C1FD8()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D50);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C2024()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D90);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C206C()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8D90);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C20FC()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8E10);
  v0 = OUTLINED_FUNCTION_55_1();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_21E1C2144()
{
  OUTLINED_FUNCTION_75_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8E10);
  v0 = OUTLINED_FUNCTION_29_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_21E1C2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21E343F80() & 1;
  }
}

uint64_t sub_21E1C2310()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E1C2358()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E1C23EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9388);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21E1C2B8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21E1C2BFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_21E3434D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343100();

  v10 = sub_21E3434C0();
  v11 = sub_21E343B40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    if (a2)
    {
      v15 = a1;
    }

    else
    {
      v15 = 7104878;
    }

    v22 = v6;
    v16 = v3;
    v17 = a1;
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_21E1C80B4(v15, v18, &v24);
    a1 = v17;
    v3 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21E1BD000, v10, v11, "selectedLLMIdentifier is now '%s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223D57360](v14, -1, -1);
    MEMORY[0x223D57360](v13, -1, -1);

    (*(v23 + 8))(v9, v22);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return (*(v3 + 16))(a1, a2);
}

uint64_t sub_21E1C2E2C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id WFMontaraEnablementHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFMontaraEnablementHelper.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_observers] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_isEnabled] = sub_21E1C303C();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for WFMontaraEnablementHelper.GPSObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21E1C31F4;
  *(v5 + 24) = v4;
  sub_21E343220();
  v6 = v3;
  sub_21E343210();
  sub_21E1C4340(&qword_27CEB8000, type metadata accessor for WFMontaraEnablementHelper.GPSObserver);

  sub_21E343200();

  return v6;
}

BOOL sub_21E1C303C()
{
  sub_21E343220();
  sub_21E343210();
  sub_21E3431F0();

  v0 = v3 != 0;
  sub_21E1C377C(v2, &qword_27CEB8008);
  return v0;
}

uint64_t sub_21E1C30AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_isEnabled;
  swift_beginAccess();
  v5 = *(a3 + v4);
  sub_21E343220();
  sub_21E343210();
  sub_21E3431F0();

  v6 = v15 != 0;
  sub_21E1C377C(v14, &qword_27CEB8008);
  *(a3 + v4) = v6;
  v7 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_observers;
  result = swift_beginAccess();
  v9 = *(a3 + v7);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;

    do
    {
      sub_21E1C4248(v11, v14);
      v12 = v15;
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v13 + 8))(v5, *(a3 + v4), v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t WFMontaraEnablementHelper.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
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

uint64_t sub_21E1C335C(void (*a1)(void *__return_ptr))
{
  sub_21E343220();
  sub_21E343210();
  a1(v4);

  v2 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_1();
    v2 = sub_21E343240();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_21E1C377C(v4, &qword_27CEB8008);
  }

  return v2;
}

uint64_t sub_21E1C3428(void (*a1)(void *__return_ptr))
{
  sub_21E343220();
  sub_21E343210();
  a1(v4);

  v2 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_1();
    v2 = sub_21E343230();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_21E1C377C(v4, &qword_27CEB8008);
  }

  return v2;
}

uint64_t WFMontaraEnablementHelper.selectedModelPunchoutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E3431B0();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20]();
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  MEMORY[0x28223BE20]();
  v8 = &v14[-1] - v7;
  sub_21E343220();
  sub_21E343210();
  sub_21E3431F0();

  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_21E343250();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v9 = sub_21E342BB0();
    OUTLINED_FUNCTION_2(v8);
    if (!v10)
    {
      return (*(*(v9 - 8) + 32))(a1, v8, v9);
    }
  }

  else
  {
    sub_21E1C377C(v14, &qword_27CEB8008);
    v12 = sub_21E342BB0();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D0E760], v2);
  sub_21E3431C0();
  (*(v4 + 8))(v6, v2);
  sub_21E342BB0();
  result = OUTLINED_FUNCTION_2(v8);
  if (!v10)
  {
    return sub_21E1C377C(v8, &qword_27CEB8010);
  }

  return result;
}

uint64_t sub_21E1C377C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WFMontaraEnablementHelper.accountUpgradeURL.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  MEMORY[0x28223BE20]();
  v3 = &v11[-1] - v2;
  sub_21E343220();
  v4 = sub_21E343210();
  sub_21E3431F0();

  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_21E343260();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    sub_21E342BB0();
    v6 = OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(v6);
    if (!v7)
    {
      return (*(*(v5 - 1) + 32))(a1, v3, v5);
    }
  }

  else
  {
    sub_21E1C377C(v11, &qword_27CEB8008);
    sub_21E342BB0();
    v9 = OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
  }

  WFMontaraEnablementHelper.selectedModelPunchoutURL.getter(a1);
  sub_21E342BB0();
  result = OUTLINED_FUNCTION_2(v3);
  if (!v7)
  {
    return sub_21E1C377C(v3, &qword_27CEB8010);
  }

  return result;
}

uint64_t WFMontaraEnablementHelper.registerObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ContentKit25WFMontaraEnablementHelper_observers;
  swift_beginAccess();
  sub_21E1C41EC(sub_21E1CDB74);
  v5 = *(*(v1 + v4) + 16);
  sub_21E1C4430(v5, sub_21E1CDB74);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  sub_21E1C4248(a1, v6 + 40 * v5 + 32);
  *(v2 + v4) = v6;
  return swift_endAccess();
}

id WFMontaraEnablementHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E1C3A70()
{
  v0 = sub_21E3437E0();
  v2 = v1;
  if (v0 == sub_21E3437E0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0();
  }

  return v5 & 1;
}

uint64_t sub_21E1C3AE8(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000012;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54504774616843;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x800000021E359450;
    }
  }

  else
  {
    v5 = 0x800000021E359430;
    v4 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x54504774616843;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000021E359450;
    }
  }

  else
  {
    v6 = 0x800000021E359430;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0();
  }

  return v8 & 1;
}

uint64_t sub_21E1C3BCC(char a1, char a2)
{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_4();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_4();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_0();
  }

  return v18 & 1;
}

uint64_t sub_21E1C3C88(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x694C797469746E65;
  }

  else
  {
    v3 = 1954047348;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000007473;
  }

  if (a2)
  {
    v5 = 0x694C797469746E65;
  }

  else
  {
    v5 = 1954047348;
  }

  if (a2)
  {
    v6 = 0xEA00000000007473;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0();
  }

  return v8 & 1;
}

uint64_t default argument 1 of WFLanguageRecognizer.init(supportedLanguages:currentLocaleId:)()
{
  v0 = sub_21E342CA0();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E342C90();
  v5 = sub_21E342C80();
  (*(v2 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21E1C3DF4(uint64_t a1, id *a2)
{
  result = sub_21E3437C0();
  *a2 = 0;
  return result;
}

uint64_t sub_21E1C3E6C(uint64_t a1, id *a2)
{
  v3 = sub_21E3437D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21E1C3EEC()
{
  v1 = sub_21E3437E0();
  MEMORY[0x223D552A0](v1);
  OUTLINED_FUNCTION_1();

  return v0;
}

uint64_t sub_21E1C3F20()
{
  sub_21E3437E0();
  sub_21E3438A0();
}

uint64_t sub_21E1C3F74()
{
  sub_21E3437E0();
  sub_21E344020();
  sub_21E3438A0();
  v0 = sub_21E344040();

  return v0;
}

uint64_t sub_21E1C3FE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E1DD6F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21E1C4014(uint64_t a1)
{
  v2 = sub_21E1C4340(&qword_27CEB8038, type metadata accessor for NLLanguage);
  v3 = sub_21E1C4340(&qword_27CEB8040, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21E1C40D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E3437A0();

  *a1 = v2;
  return result;
}

uint64_t sub_21E1C4118(uint64_t a1)
{
  v2 = sub_21E1C4340(&qword_27CEB8068, type metadata accessor for TCFormatFeature);
  v3 = sub_21E1C4340(&unk_27CEB8070, type metadata accessor for TCFormatFeature);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21E1C41EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21E1C4248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E1C4340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21E1C4430(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21E1C44C4()
{
  sub_21E3437E0();
  sub_21E3437A0();
  OUTLINED_FUNCTION_1();

  return v0;
}

void sub_21E1C450C(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_0()
{

  return sub_21E343F80();
}

uint64_t sub_21E1C46C4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E3522F0;
  *(inited + 32) = sub_21E3437E0();
  *(inited + 40) = v5;
  v6 = MEMORY[0x277D837D0];
  if (!a2)
  {
    sub_21E343870();
    if (qword_27CEB7FA0 == -1)
    {
LABEL_6:
      v7 = OUTLINED_FUNCTION_33();
      v8 = OUTLINED_FUNCTION_33();

      v10 = OUTLINED_FUNCTION_29(v9, sel_localizedStringForKey_value_table_);

      v11 = sub_21E3437E0();
      v13 = v12;

      goto LABEL_10;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_6;
  }

  if (a2 == 1)
  {
    sub_21E343870();
    if (qword_27CEB7FA0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_21E343870();
  if (qword_27CEB7FA0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = qword_27CEB8248;
  v15 = sub_21E3437A0();
  v16 = sub_21E3437A0();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  sub_21E3437E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8180);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21E3522F0;
  *(v18 + 56) = v6;
  *(v18 + 64) = sub_21E1C8A10();
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  v11 = sub_21E3437B0();
  v13 = v19;

LABEL_10:
  *(inited + 72) = v6;
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  return sub_21E343760();
}

uint64_t sub_21E1C49BC(uint64_t a1)
{
  v2 = sub_21E1C89BC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21E1C49F8(uint64_t a1)
{
  v2 = sub_21E1C89BC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21E1C4A3C()
{
  v0 = sub_21E343E40();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

BOOL static WFiWorkPDFConverter.canHandleFile(_:)(void *a1)
{
  v1 = [a1 wfType];
  v2 = [v1 string];

  sub_21E3437E0();
  OUTLINED_FUNCTION_7();
  return sub_21E1C4A3C() != 3;
}

uint64_t WFiWorkPDFConverter.convertToPDF(_:)()
{
  OUTLINED_FUNCTION_10();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_21E3434D0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_21E342BB0();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21E1C4C70()
{
  v1 = [*(v0 + 40) wfType];
  v2 = [v1 string];

  sub_21E3437E0();
  v3 = sub_21E1C4A3C();
  if (v3 == 3)
  {
    sub_21E343100();
    v4 = sub_21E3434C0();
    v5 = sub_21E343B60();
    if (OUTLINED_FUNCTION_32(v5))
    {
      v6 = OUTLINED_FUNCTION_31();
      *v6 = 0;
      _os_log_impl(&dword_21E1BD000, v4, v5, "convertToPDF was called with an unsupported file type", v6, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    v7 = OUTLINED_FUNCTION_7();
    v8(v7);
    sub_21E1C8060();
    OUTLINED_FUNCTION_14();
    *v9 = 0;
    v9[1] = 0;
    swift_willThrow();
    goto LABEL_57;
  }

  v10 = v3;
  v11 = [objc_allocWithZone(MEMORY[0x277D23C30]) initWithOptions_];
  *(v0 + 112) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21E352300;
  v13 = "oundExportIntent";
  v14 = objc_allocWithZone(MEMORY[0x277D23850]);
  *(v12 + 32) = sub_21E1C76F0();
  sub_21E1C868C(0, &qword_27CEB8090);
  v15 = sub_21E3439C0();

  *(v0 + 16) = 0;
  v16 = [v11 actionsWithFullyQualifiedIdentifiers:v15 error:v0 + 16];

  v17 = *(v0 + 16);
  if (!v16)
  {
    v46 = v17;
    sub_21E342B50();

LABEL_55:
    swift_willThrow();
LABEL_56:

LABEL_57:

    OUTLINED_FUNCTION_8();

    return v81();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8098);
  v18 = sub_21E343740();
  v19 = v17;

  sub_21E1C5F3C(v18);
  v21 = v20;
  v23 = v22;

  if (!v21 || (, v24 = sub_21E1C5FC8(v23), *(v0 + 120) = v24, , !v24))
  {
    sub_21E343100();
    v35 = sub_21E3434C0();
    v36 = sub_21E343B60();
    if (OUTLINED_FUNCTION_32(v36))
    {
      v37 = OUTLINED_FUNCTION_34();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136315138;
      v164 = v10;
      if (v10)
      {
        if (v10 == 1)
        {
          v13 = "com.apple.iWork.Numbers";
        }

        else
        {
          v13 = "onSelectedLLMIdentifierChange";
        }
      }

      v74 = *(v0 + 80);
      v76 = *(v0 + 56);
      v75 = *(v0 + 64);
      v77 = OUTLINED_FUNCTION_17(v38, v13 | 0x8000000000000000, v39, v40, v41, v42, v43, v44, v158, v159);

      *(v37 + 4) = v77;
      _os_log_impl(&dword_21E1BD000, v35, v36, "Could not fetch LNActionMetadata for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v75 + 8))(v74, v76);
      v10 = v164;
    }

    else
    {
      v47 = *(v0 + 80);
      v49 = *(v0 + 56);
      v48 = *(v0 + 64);

      (*(v48 + 8))(v47, v49);
    }

    v78 = *&aPages_0[8 * v10];
    v79 = qword_21E352558[v10];
    sub_21E1C8060();
    OUTLINED_FUNCTION_14();
    *v80 = v78;
    v80[1] = v79;
    goto LABEL_55;
  }

  v161 = v24;
  v163 = v10;
  v160 = v11;
  v25 = [v24 parameters];
  sub_21E1C868C(0, &qword_27CEB80A0);
  v26 = sub_21E3439D0();

  v27 = sub_21E1C803C(v26);
  for (i = 0; ; ++i)
  {
    if (v27 == i)
    {

      sub_21E343100();
      v50 = sub_21E3434C0();
      v51 = sub_21E343B60();
      if (OUTLINED_FUNCTION_32(v51))
      {
        v52 = swift_slowAlloc();
        swift_slowAlloc();
        *v52 = 136315394;
        v53 = OUTLINED_FUNCTION_12();
        v56 = sub_21E1C80B4(v53, v54, v55);
        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v11 = v160;
        if (v163)
        {
          if (v163 == 1)
          {
            v63 = "com.apple.iWork.Numbers";
          }

          else
          {
            v63 = "onSelectedLLMIdentifierChange";
          }
        }

        else
        {
          v63 = "oundExportIntent";
        }

        v165 = *(v0 + 88);
        v132 = *(v0 + 56);
        v131 = *(v0 + 64);
        v133 = OUTLINED_FUNCTION_17(v56, v63 | 0x8000000000000000, v57, v58, v59, v60, v61, v62, v158, "oundExportIntent");

        *(v52 + 14) = v133;
        _os_log_impl(&dword_21E1BD000, v50, v51, "Could not find '%s' parameter in %s", v52, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_5_0();

        (*(v131 + 8))(v165, v132);
      }

      else
      {
LABEL_65:

        v96 = OUTLINED_FUNCTION_7();
        v97(v96);
        v11 = v160;
      }

LABEL_73:
      sub_21E1C8060();
      OUTLINED_FUNCTION_14();
      *v134 = xmmword_21E352320;
      swift_willThrow();

      goto LABEL_56;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x223D556A0](i, v26);
    }

    else
    {
      if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v29 = *(v26 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    v31 = sub_21E1C8620(v29);
    if (!v32)
    {

      continue;
    }

    if (v31 == 0x746E656D75636F64 && v32 == 0xE800000000000000)
    {
      break;
    }

    v34 = sub_21E343F80();

    if (v34)
    {
      goto LABEL_36;
    }
  }

LABEL_36:

  v64 = [v161 parameters];
  v65 = sub_21E3439D0();

  v66 = sub_21E1C803C(v65);
  v67 = 0;
  while (2)
  {
    if (v66 == v67)
    {

      sub_21E343100();
      v50 = sub_21E3434C0();
      v83 = sub_21E343B60();
      if (!OUTLINED_FUNCTION_32(v83))
      {
        goto LABEL_65;
      }

      v84 = swift_slowAlloc();
      swift_slowAlloc();
      *v84 = 136315394;
      v85 = OUTLINED_FUNCTION_19();
      v88 = sub_21E1C80B4(v85, v86, v87);
      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      v11 = v160;
      if (v163)
      {
        if (v163 == 1)
        {
          v95 = "com.apple.iWork.Numbers";
        }

        else
        {
          v95 = "onSelectedLLMIdentifierChange";
        }
      }

      else
      {
        v95 = "oundExportIntent";
      }

      v166 = *(v0 + 96);
      v156 = *(v0 + 56);
      v155 = *(v0 + 64);
      v157 = OUTLINED_FUNCTION_17(v88, v95 | 0x8000000000000000, v89, v90, v91, v92, v93, v94, v158, "oundExportIntent");

      *(v84 + 14) = v157;
      _os_log_impl(&dword_21E1BD000, v50, v83, "Could not find '%s' intent parameter in %s", v84, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v155 + 8))(v166, v156);
      goto LABEL_73;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x223D556A0](v67, v65);
    }

    else
    {
      if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v68 = *(v65 + 8 * v67 + 32);
    }

    v69 = v68;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_81;
    }

    v70 = sub_21E1C8620(v68);
    if (!v71)
    {

LABEL_50:
      ++v67;
      continue;
    }

    break;
  }

  if (v70 != 0x74616D726F66 || v71 != 0xE600000000000000)
  {
    v73 = sub_21E343F80();

    if (v73)
    {
      goto LABEL_67;
    }

    goto LABEL_50;
  }

LABEL_67:

  v98 = [objc_allocWithZone(MEMORY[0x277D23BC0]) init];
  *(v0 + 128) = v98;
  v99 = [objc_opt_self() policyWithActionMetadata:v161 signals:v98];
  *(v0 + 136) = v99;
  *(v0 + 24) = 0;
  v100 = [v99 connectionWithError_];
  *(v0 + 144) = v100;
  v101 = *(v0 + 24);
  if (!v100)
  {
    v130 = v101;
    sub_21E342B50();

    swift_willThrow();
    goto LABEL_57;
  }

  v162 = v100;
  v102 = v99;
  v103 = *(v0 + 104);
  v104 = *(v0 + 40);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_21E352310;
  sub_21E1C868C(0, &qword_27CEB80A8);
  v106 = v101;
  v107 = [v104 fileURL];
  sub_21E342B90();

  v108 = [v104 filename];
  v109 = sub_21E3437E0();
  v111 = v110;

  v112 = [v104 wfType];
  v113 = [v112 string];

  v114 = sub_21E3437E0();
  v116 = v115;

  sub_21E1C60F8(v103, v109, v111, v114, v116);
  v117 = [objc_opt_self() fileValueType];
  v118 = objc_allocWithZone(MEMORY[0x277D23950]);
  v126 = OUTLINED_FUNCTION_26(v118, v119, v120, v121, v122, v123, v124, v125);
  v127 = objc_allocWithZone(MEMORY[0x277D238D0]);
  v128 = OUTLINED_FUNCTION_12();
  *(v105 + 32) = sub_21E1C77F0(v128, v129, v126);
  v135 = v102;
  v136 = *(v0 + 48);
  sub_21E1C868C(0, &qword_27CEB80B0);
  sub_21E1C6208();
  v137 = objc_allocWithZone(MEMORY[0x277D23950]);
  v145 = OUTLINED_FUNCTION_26(v137, v138, v139, v140, v141, v142, v143, v144);
  v146 = objc_allocWithZone(MEMORY[0x277D238D0]);
  v147 = OUTLINED_FUNCTION_19();
  *(v105 + 40) = sub_21E1C77F0(v147, v148, v145);
  sub_21E1C868C(0, &qword_27CEB80B8);
  v149 = sub_21E3439C0();

  v150 = [v135 actionWithParameters_];
  *(v0 + 152) = v150;

  v151 = [objc_allocWithZone(MEMORY[0x277D23B00]) init];
  *(v0 + 160) = v151;
  v152 = [v162 executorForAction:v150 options:v151 delegate:v136];
  *(v0 + 168) = v152;
  v153 = swift_task_alloc();
  *(v0 + 176) = v153;
  *(v153 + 16) = v136;
  *(v153 + 24) = v152;
  v154 = swift_task_alloc();
  *(v0 + 184) = v154;
  sub_21E1C868C(0, &qword_27CEB80C0);
  *v154 = v0;
  v154[1] = sub_21E1C5BD0;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_21E1C5BD0()
{
  OUTLINED_FUNCTION_20();
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v2 = v7;
  *(v7 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_21E1C5D10()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);

  v8 = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_21E1C5E2C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 112);

  OUTLINED_FUNCTION_8();

  return v8();
}

void *sub_21E1C5F3C(uint64_t a1)
{
  result = sub_21E1C8F88();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_21E1C8FC8(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_21E1C5FC8(uint64_t a1)
{
  result = sub_21E1C8F88();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21E1C8ED8(result, v3, 0, a1);
  }
}

uint64_t sub_21E1C602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_21E343500();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

double sub_21E1C60D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_21E1C4248(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_21E1C60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21E342B60();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_21E3437A0();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_21E3437A0();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  v12 = sub_21E342BB0();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_21E1C6208()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21E3437A0();

  v2 = [v0 initWithEnumerationIdentifier_];

  return v2;
}

id sub_21E1C627C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8198);
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
  swift_beginAccess();
  sub_21E1C8E68(v7, a2 + v9);
  swift_endAccess();
  return [a3 perform];
}

uint64_t sub_21E1C6430(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21E1C64F4;

  return WFiWorkPDFConverter.convertToPDF(_:)();
}

uint64_t sub_21E1C64F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_21E342B40();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_21E1C66A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = sub_21E343AB0();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_21E3524F0;
  v8[5] = v7;
  sub_21E1C7B04(0, 0, v5, &unk_21E352500, v8);
}

id WFiWorkPDFConverter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFiWorkPDFConverter.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id WFiWorkPDFConverter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WFiWorkPDFConverter.executor(_:didPerformActionWith:error:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_21E342BB0();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_24();
  v121 = v10;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20]();
  v12 = &v118 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB80D0);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20]();
  v127 = &v118 - v16;
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v129 = v17;
  v130 = v18;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_24();
  v128 = v19;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20]();
  v123 = &v118 - v20;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20]();
  v122 = &v118 - v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20]();
  v124 = &v118 - v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20]();
  v24 = &v118 - v23;
  if (a3)
  {
    v25 = v15;
    v26 = v9;
    v126 = a2;
    v27 = a3;
    sub_21E343100();
    v28 = a3;
    v29 = a3;
    v30 = sub_21E3434C0();
    v31 = sub_21E343B60();

    LODWORD(v120) = v31;
    v32 = os_log_type_enabled(v30, v31);
    v125 = v29;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_34();
      v118 = v33;
      v119 = swift_slowAlloc();
      v133[0] = v119;
      *v33 = 136315138;
      v131 = v29;
      v34 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8);
      v35 = sub_21E343830();
      v37 = v4;
      v38 = sub_21E1C80B4(v35, v36, v133);
      v9 = v26;

      v39 = v118;
      *(v118 + 1) = v38;
      v4 = v37;
      _os_log_impl(&dword_21E1BD000, v30, v120, "LNActionExecutor failed with error: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      (*(v130 + 8))(v24, v129);
    }

    else
    {

      (*(v130 + 8))(v24, v129);
      v9 = v26;
    }

    swift_beginAccess();
    if (!OUTLINED_FUNCTION_16())
    {
      v15 = v25;
      v63 = OUTLINED_FUNCTION_3();
      v64(v63);
      v133[0] = v125;
      sub_21E343A60();
      v65 = OUTLINED_FUNCTION_21();
      v66(v65);
      a2 = v126;
      if (!v126)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    a2 = v126;
    v15 = v25;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_8:
  v40 = [a2 output];
  v41 = [v40 value];

  if (v41)
  {
    v42 = [v41 value];

    sub_21E343CE0();
    swift_unknownObjectRelease();
    sub_21E1C868C(0, &qword_27CEB80A8);
    if (swift_dynamicCast())
    {
      v126 = v7;
      v43 = v132;
      v44 = [v132 fileURL];
      v45 = v130;
      if (v44)
      {
        v46 = v44;
        v119 = v15;
        v125 = v9;
        v123 = v4;
        v128 = v12;
        sub_21E342B90();

        v47 = v124;
        sub_21E343100();
        v48 = v43;
        v49 = sub_21E3434C0();
        v50 = sub_21E343B50();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_34();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          *(v51 + 4) = v48;
          *v52 = v48;
          v53 = v48;
          _os_log_impl(&dword_21E1BD000, v49, v50, "LNActionExecutor completed with output: %@", v51, 0xCu);
          sub_21E1C377C(v52, &qword_27CEB80E0);
          OUTLINED_FUNCTION_5_0();
          v45 = v130;
          OUTLINED_FUNCTION_5_0();
        }

        v120 = v48;

        v54 = *(v45 + 8);
        v54(v47, v129);
        v55 = objc_opt_self();
        v56 = v128;
        v57 = v45 + 8;
        v58 = sub_21E342B60();
        v59 = [v55 fileWithURL:v58 options:8];

        if (v59)
        {
          v60 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
          OUTLINED_FUNCTION_15();
          if (__swift_getEnumTagSinglePayload(v57 + v60, 1, v13))
          {
            v61 = OUTLINED_FUNCTION_18();
            v62(v61);
            swift_endAccess();
          }

          else
          {
            v97 = OUTLINED_FUNCTION_11();
            v98(v97);
            swift_endAccess();
            v133[0] = v59;
            sub_21E343A70();

            v99 = OUTLINED_FUNCTION_21();
            v100(v99);
            v101 = OUTLINED_FUNCTION_18();
            v102(v101);
          }
        }

        else
        {
          v130 = v57;
          v83 = v122;
          sub_21E343100();
          v84 = v125;
          v85 = v126;
          v86 = v121;
          (*(v125 + 2))(v121, v56, v126);
          v87 = sub_21E3434C0();
          v88 = sub_21E343B60();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = OUTLINED_FUNCTION_34();
            v90 = swift_slowAlloc();
            v133[0] = v90;
            *v89 = 136315138;
            sub_21E1C86CC();
            v91 = sub_21E343F60();
            v93 = v92;
            v94 = v84[1];
            v94(v86, v126);
            v95 = sub_21E1C80B4(v91, v93, v133);

            *(v89 + 4) = v95;
            _os_log_impl(&dword_21E1BD000, v87, v88, "Failed to create WFFileRepresentation for %s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v90);
            OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_5_0();

            v96 = v122;
          }

          else
          {

            v94 = v84[1];
            v94(v86, v85);
            v96 = v83;
          }

          v54(v96, v129);
          v107 = OBJC_IVAR____TtC10ContentKit19WFiWorkPDFConverter_continuation;
          OUTLINED_FUNCTION_15();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86 + v107, 1, v13);
          v109 = v120;
          if (EnumTagSinglePayload)
          {
            v110 = OUTLINED_FUNCTION_25();
            (v94)(v110);
            swift_endAccess();
          }

          else
          {
            v111 = OUTLINED_FUNCTION_11();
            v112(v111);
            swift_endAccess();
            sub_21E1C8060();
            v113 = OUTLINED_FUNCTION_14();
            *v114 = xmmword_21E352320;
            v133[0] = v113;
            sub_21E343A60();

            v115 = OUTLINED_FUNCTION_21();
            v116(v115);
            v117 = OUTLINED_FUNCTION_25();
            (v94)(v117);
          }
        }

        return;
      }

      v78 = v123;
      sub_21E343100();
      v79 = sub_21E3434C0();
      v80 = sub_21E343B60();
      if (os_log_type_enabled(v79, v80))
      {
        *OUTLINED_FUNCTION_31() = 0;
        OUTLINED_FUNCTION_30(&dword_21E1BD000, v81, v82, "INFile.fileURL was nil");
        v45 = v130;
        OUTLINED_FUNCTION_5_0();
      }

      (*(v45 + 8))(v78, v129);
      OUTLINED_FUNCTION_27();
      if (OUTLINED_FUNCTION_16())
      {

        return;
      }

      v103 = OUTLINED_FUNCTION_3();
      v104(v103);
      sub_21E1C8060();
      v105 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_28(v105, v106, xmmword_21E352320);

LABEL_21:
      v76 = OUTLINED_FUNCTION_21();
      v77(v76);
      return;
    }
  }

LABEL_17:
  v67 = v128;
  sub_21E343100();
  v68 = sub_21E3434C0();
  v69 = sub_21E343B60();
  if (os_log_type_enabled(v68, v69))
  {
    *OUTLINED_FUNCTION_31() = 0;
    OUTLINED_FUNCTION_30(&dword_21E1BD000, v70, v71, "LNActionExecutor did not provide an output LNValue with a value of type INFile");
    OUTLINED_FUNCTION_5_0();
  }

  (*(v130 + 8))(v67, v129);
  OUTLINED_FUNCTION_27();
  if (!OUTLINED_FUNCTION_16())
  {
    v72 = OUTLINED_FUNCTION_3();
    v73(v72);
    sub_21E1C8060();
    v74 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_28(v74, v75, xmmword_21E352320);
    goto LABEL_21;
  }
}

uint64_t sub_21E1C7558(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20]();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343100();
  v9 = sub_21E3434C0();
  v10 = sub_21E343B70();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_31();
    *v11 = 0;
    _os_log_impl(&dword_21E1BD000, v9, v10, a3, v11, 2u);
    OUTLINED_FUNCTION_5_0();
  }

  return (*(v6 + 8))(v8, v4);
}

id sub_21E1C76F0()
{
  v1 = sub_21E3437A0();

  v2 = sub_21E3437A0();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

id sub_21E1C7778(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_21E343F70() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

id sub_21E1C77F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21E3437A0();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

uint64_t sub_21E1C7854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21E1C9060;

  return v6();
}

uint64_t sub_21E1C793C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21E1C7A24;

  return v7();
}

uint64_t sub_21E1C7A24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_21E1C7B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20]();
  v10 = v21 - v9;
  sub_21E1C8CD0(a3, v21 - v9);
  v11 = sub_21E343AB0();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_21E1C377C(v10, &qword_27CEB8190);
  }

  else
  {
    sub_21E343AA0();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_21E343A50();
    v14 = v13;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v15 = sub_21E343850() + 32;
      v16 = swift_allocObject();
      *(v16 + 16) = a4;
      *(v16 + 24) = a5;

      if (v14 | v12)
      {
        v22[0] = 0;
        v22[1] = 0;
        v17 = v22;
        v22[2] = v12;
        v22[3] = v14;
      }

      else
      {
        v17 = 0;
      }

      v21[1] = 7;
      v21[2] = v17;
      v21[3] = v15;
      v19 = swift_task_create();

      sub_21E1C377C(a3, &qword_27CEB8190);

      return v19;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E1C377C(a3, &qword_27CEB8190);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  if (v14 | v12)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v12;
    v22[7] = v14;
  }

  return swift_task_create();
}

uint64_t sub_21E1C7DD0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21E1C7EC8;

  return v6(a1);
}

uint64_t sub_21E1C7EC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_21E1C7FAC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A0);
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && a1 >> 62)
  {

    return sub_21E343DF0();
  }

  else
  {
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v3 = a1;
    }

    return *(v3 + 16);
  }
}

uint64_t sub_21E1C803C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21E343DF0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_21E1C8060()
{
  result = qword_27CEB8080;
  if (!qword_27CEB8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8080);
  }

  return result;
}

uint64_t sub_21E1C80B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_23();
  v9 = sub_21E1C8174(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_21E1C8F28(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
}

unint64_t sub_21E1C8174(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21E1C8274(a5, a6);
    *a1 = v9;
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
    result = sub_21E343D80();
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

uint64_t sub_21E1C8274(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E1C82C0(a1, a2);
  sub_21E1C83D8(&unk_282F4DE00);
  return v3;
}

uint64_t sub_21E1C82C0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21E343920())
  {
    result = sub_21E1C84BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21E343D10();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21E343D80();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21E1C83D8(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_21E1C852C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

void *sub_21E1C84BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_21E1C852C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB81A8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_21E1C8620(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21E3437E0();

  return v3;
}

uint64_t sub_21E1C868C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_21E1C86CC()
{
  result = qword_27CEB80D8;
  if (!qword_27CEB80D8)
  {
    sub_21E342BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB80D8);
  }

  return result;
}

uint64_t type metadata accessor for WFiWorkPDFConverter()
{
  result = qword_27CEB80F8;
  if (!qword_27CEB80F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E1C8778()
{
  sub_21E1C8808();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E1C8808()
{
  if (!qword_27CEB8108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB80D0);
    v0 = sub_21E343C70();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEB8108);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ContentKit19WFiWorkPDFConverterC14ConverterErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21E1C88D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21E1C892C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21E1C898C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_21E1C89BC()
{
  result = qword_27CEB8170;
  if (!qword_27CEB8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8170);
  }

  return result;
}

unint64_t sub_21E1C8A10()
{
  result = qword_27CEB8188;
  if (!qword_27CEB8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8188);
  }

  return result;
}

uint64_t sub_21E1C8A64()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C7A24;
  v2 = OUTLINED_FUNCTION_7();

  return v3(v2);
}

uint64_t sub_21E1C8B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21E1C9060;
  v2 = OUTLINED_FUNCTION_7();

  return v3(v2);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21E1C8C0C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9(v6);
  *v7 = v8;
  v7[1] = sub_21E1C9060;

  return sub_21E1C793C(a1, v3, v4, v5);
}

uint64_t sub_21E1C8CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1C8D40()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_21E1C8DD4()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_21E1C8E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8198);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E1C8ED8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21E1C8F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_21E1C8FC8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x223D57360);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return __swift_getEnumTagSinglePayload(v1 + v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_21E1C80B4(0xD000000000000020, a2, va);
}

id OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_21E1C7778(va, v8);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;
  *(v3 - 128) = a1;

  return sub_21E343A60();
}

id OUTLINED_FUNCTION_29(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_32(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_21E3437A0();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return swift_slowAlloc();
}

id WFContentItemRegistry.register(_:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 registerContentItemClass_];
}

id WFContentItemRegistry.contentItemClass(for:)(uint64_t a1)
{
  result = [v1 contentItemClassForType_];
  if (result)
  {
    swift_getObjCClassMetadata();
    sub_21E1C93E0();
    return swift_dynamicCastMetatypeUnconditional();
  }

  return result;
}

unint64_t sub_21E1C93E0()
{
  result = qword_280CD7A40;
  if (!qword_280CD7A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD7A40);
  }

  return result;
}

uint64_t WFContentItemRegistry.contentItemClasses(supporting:)(uint64_t a1)
{
  v2 = [v1 contentItemClassesSupportingType_];
  v3 = sub_21E343B30();

  v4 = sub_21E1C94A8(v3);

  return v4;
}

uint64_t sub_21E1C94A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_21E1D5954(0, v1, 0);
  v2 = v29;
  result = sub_21E1C97B0();
  v5 = result;
  v6 = a1;
  v8 = v7;
  v9 = 0;
  v10 = a1 + 56;
  v23 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v5 < 1 << *(v6 + 32))
    {
      v11 = v5 >> 6;
      if ((*(v10 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v6 + 36) != v4)
      {
        goto LABEL_25;
      }

      v25 = v4;
      sub_21E1C97F0(*(v6 + 48) + 40 * v5, v27);
      sub_21E1C97F0(v27, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8210);
      swift_dynamicCast();
      result = sub_21E1C984C(v27);
      v12 = v28;
      v29 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_21E1D5954((v13 > 1), v14 + 1, 1);
        v2 = v29;
      }

      *(v2 + 16) = v14 + 1;
      *(v2 + 8 * v14 + 32) = v12;
      if (v8)
      {
        goto LABEL_29;
      }

      v10 = a1 + 56;
      v6 = a1;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(a1 + 56 + 8 * v11);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v25)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 64 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_21E1C98A0(v5, v25, 0);
            v6 = a1;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_21E1C98A0(v5, v25, 0);
        v6 = a1;
      }

LABEL_19:
      if (++v9 == v23)
      {
        return v2;
      }

      v8 = 0;
      v4 = *(v6 + 36);
      v5 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t WFContentItemRegistry.contentItemClasses.getter()
{
  v1 = [v0 contentItemClasses];
  v2 = sub_21E343B30();

  v3 = sub_21E1C94A8(v2);

  return v3;
}

uint64_t sub_21E1C98A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t LNCodableValue.dateInterval()@<X0>(uint64_t a1@<X8>)
{
  sub_21E3429C0();
  swift_allocObject();
  sub_21E3429B0();
  v3 = sub_21E342A80();
  v4 = [v1 data];
  v5 = sub_21E342BF0();
  v7 = v6;

  sub_21E1C9CA8(&qword_27CEB8218);
  sub_21E3429A0();
  sub_21E1C99C4(v5, v7);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_21E1C99C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_21E1C9A1C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8230);
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  v4 = a1;
  LNCodableValue.dateInterval()(v3);

  v5 = sub_21E342A80();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    v6 = sub_21E342A60();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return v6;
}

id LNCodableValue.init(_:)(uint64_t a1)
{
  sub_21E3429E0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_0_1();
  sub_21E342A20();
  swift_allocObject();
  sub_21E342A10();
  sub_21E3429D0();
  sub_21E3429F0();
  v3 = sub_21E342A80();
  sub_21E1C9CA8(&qword_27CEB8220);
  v4 = sub_21E342A00();
  v6 = v5;
  v7 = sub_21E342BC0();
  v8 = [v1 initWithData_];
  sub_21E1C99C4(v4, v6);

  (*(*(v3 - 8) + 8))(a1, v3);
  return v8;
}

{
  v3 = sub_21E3429E0();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_0_1();
  sub_21E342A20();
  swift_allocObject();
  sub_21E342A10();
  sub_21E3429D0();
  sub_21E3429F0();
  v4 = sub_21E342B30();
  sub_21E229980(&qword_27CEB9250);
  v5 = sub_21E342A00();
  v7 = v6;
  v8 = sub_21E342BC0();
  v9 = [v1 initWithData_];
  sub_21E1C99C4(v5, v7);

  (*(*(v4 - 8) + 8))(a1, v4);
  return v9;
}

uint64_t sub_21E1C9CA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21E342A80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _sSo14LNCodableValueC10ContentKitEyAB10Foundation12DateIntervalVcfC_0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21E342A60();
  v4 = [v2 initWithDateInterval_];

  v5 = sub_21E342A80();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id LNValue.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E342A80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E343BA0();
  (*(v5 + 16))(v8, a1, v4);
  v9 = LNCodableValue.init(_:)(v8);
  sub_21E1C9ED8();
  v10 = sub_21E343BC0();
  v11 = [v2 initWithValue:v9 valueType:v10];

  (*(v5 + 8))(a1, v4);
  return v11;
}

{
  v2 = v1;
  v4 = sub_21E342B30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E343BA0();
  (*(v5 + 16))(v8, a1, v4);
  v9 = LNCodableValue.init(_:)(v8);
  sub_21E1C9ED8();
  v10 = sub_21E343BD0();
  v11 = [v2 initWithValue:v9 valueType:v10];

  (*(v5 + 8))(a1, v4);
  return v11;
}

unint64_t sub_21E1C9ED8()
{
  result = qword_27CEB8228;
  if (!qword_27CEB8228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8228);
  }

  return result;
}

uint64_t sub_21E1C9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_21E342A80();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_0_1();
  v7 = v6 - v5;
  sub_21E342A70();
  return a4(v7);
}

WFModelContentLocation __swiftcall WFModelContentLocation.init(model:)(ContentKit::WFGenerativeModelName model)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21E1CA0D4();
  v2 = sub_21E3437A0();

  v3 = [v1 initWithIdentifier:v2 promptingBehaviour:2];

  v7 = v3;
  result.super._promptingBehaviour = v6;
  result.super._identifier = v5;
  result.super._localizedTitle = v4;
  result.super.super.isa = v7;
  return result;
}

unint64_t sub_21E1CA0D4()
{
  sub_21E342A50();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_1();
  sub_21E342A30();
  sub_21E1CB3C4();
  sub_21E343CA0();
  v1 = OUTLINED_FUNCTION_3_0();
  v2(v1);

  v3 = sub_21E343840();
  v5 = v4;

  MEMORY[0x223D55250](v3, v5);

  return 0xD00000000000001BLL;
}

uint64_t WFModelContentLocation.localizedTitle.getter()
{
  v1 = v0;
  v2 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  v9 = [v1 identifier];
  v10 = sub_21E3437E0();
  v12 = v11;

  sub_21E1CA7E8(v10, v12, &v43);

  switch(v43)
  {
    case 1:
      v28 = [objc_allocWithZone(type metadata accessor for WFMontaraEnablementHelper()) init];
      v29 = WFMontaraEnablementHelper.selectedModelLocalizedName.getter();
      if (v30 || (v29 = WFMontaraEnablementHelper.defaultModelLocalizedName.getter(), v31))
      {
        v17 = v29;
      }

      else
      {
        v33 = [v1 &selRef_initWithPersonNameComponents_];
        v34 = sub_21E3437E0();
        v36 = v35;

        sub_21E1CA7E8(v34, v36, &v41);

        switch(v41)
        {
          case 1:
            sub_21E343870();
            OUTLINED_FUNCTION_6();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          case 2:
            sub_21E343870();
            OUTLINED_FUNCTION_6();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_20;
            }

            goto LABEL_21;
          case 3:

            goto LABEL_8;
          default:
            sub_21E343870();
            OUTLINED_FUNCTION_6();
            if (qword_27CEB7FA0 == -1)
            {
              goto LABEL_20;
            }

LABEL_21:
            OUTLINED_FUNCTION_0_0();
LABEL_20:
            OUTLINED_FUNCTION_3_0();
            v37 = sub_21E3437A0();
            OUTLINED_FUNCTION_3_0();
            v38 = sub_21E3437A0();

            v40 = OUTLINED_FUNCTION_4_1(v39, sel_localizedStringForKey_value_table_);

            v17 = sub_21E3437E0();
            break;
        }
      }

      break;
    case 3:
      sub_21E343100();
      v18 = v1;
      v19 = sub_21E3434C0();
      v20 = sub_21E343B60();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_34();
        v22 = OUTLINED_FUNCTION_7_0();
        v42 = v22;
        *v21 = 136315138;
        v23 = [v18 &selRef_initWithPersonNameComponents_];
        v24 = sub_21E3437E0();
        v26 = v25;

        v27 = sub_21E1C80B4(v24, v26, &v42);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_21E1BD000, v19, v20, "Failed to get localized title for model with identifier %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_5_0();
      }

      (*(v4 + 8))(v8, v2);
LABEL_8:
      v17 = 0;
      break;
    default:
      sub_21E343870();
      if (qword_27CEB7FA0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v13 = qword_27CEB8248;
      v14 = sub_21E3437A0();
      v15 = sub_21E3437A0();

      v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

      v17 = sub_21E3437E0();
      break;
  }

  return v17;
}

uint64_t sub_21E1CA7E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v43 - v12;
  v52 = sub_21E342A50();
  OUTLINED_FUNCTION_5();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_1();
  v18 = v17 - v16;
  if (sub_21E343930())
  {
    v46 = v8;
    v47 = v6;
    v48 = a3;
    v44 = a1;
    v45 = a2;
    v57 = a1;
    v58 = a2;
    v55 = 0xD00000000000001BLL;
    v56 = 0x800000021E3598C0;
    v53 = 0;
    v54 = 0xE000000000000000;
    v51 = sub_21E1CB3C4();
    sub_21E343CB0();
    OUTLINED_FUNCTION_6();
    v19 = 0;
    v50 = 0x800000021E359450;
    v20 = (v14 + 8);
    do
    {
      v21 = byte_282F4DE90[v19++ + 32];
      v22 = 0xD000000000000012;
      v23 = 0x54504774616843;
      if (v21 != 1)
      {
        v23 = 0xD00000000000001CLL;
      }

      v24 = v50;
      if (v21 == 1)
      {
        v24 = 0xE700000000000000;
      }

      if (v21)
      {
        v22 = v23;
        v25 = v24;
      }

      else
      {
        v25 = 0x800000021E359430;
      }

      v57 = v22;
      v58 = v25;
      sub_21E342A30();
      sub_21E343CA0();
      (*v20)(v18, v52);

      v26 = sub_21E343840();
      v28 = v27;

      if (v26 == a1 && v28 == 0x800000021E3598C0)
      {

LABEL_23:

        goto LABEL_24;
      }

      v30 = sub_21E343F80();

      if (v30)
      {
        goto LABEL_23;
      }
    }

    while (v19 != 3);

    v31 = v49;
    sub_21E343100();
    v32 = v45;

    v33 = sub_21E3434C0();
    v34 = sub_21E343B60();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_34();
      v36 = OUTLINED_FUNCTION_7_0();
      v57 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_21E1C80B4(v44, v32, &v57);
      _os_log_impl(&dword_21E1BD000, v33, v34, "Failed to find a WFGenerativeModelName candidate enum case for identifier: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
    }

    result = (*(v46 + 8))(v31, v47);
    LOBYTE(v21) = 3;
LABEL_24:
    a3 = v48;
  }

  else
  {
    v38 = a1;
    sub_21E343100();

    v39 = sub_21E3434C0();
    v40 = sub_21E343B70();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_34();
      v42 = OUTLINED_FUNCTION_7_0();
      v57 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_21E1C80B4(v38, a2, &v57);
      _os_log_impl(&dword_21E1BD000, v39, v40, "WFModelContentLocation was created with an invalid identifier: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
    }

    result = (*(v8 + 8))(v11, v6);
    LOBYTE(v21) = 3;
  }

  *a3 = v21;
  return result;
}

uint64_t static WFModelContentLocation.object(withWFSerializedRepresentation:)(uint64_t a1)
{
  v2 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v8 = v7 - v6;
  sub_21E1CAF20(a1, v21);
  if (!v22)
  {
    sub_21E1CB318(v21);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0 || (sub_21E1CA7E8(v19, v20, v21), , v9 = v21[0], LOBYTE(v21[0]) == 3))
  {
LABEL_7:
    sub_21E343100();

    v12 = sub_21E3434C0();
    v13 = sub_21E343B60();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_34();
      v15 = OUTLINED_FUNCTION_7_0();
      v21[0] = v15;
      *v14 = 136315138;
      v16 = sub_21E343750();
      v18 = sub_21E1C80B4(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_21E1BD000, v12, v13, "Failed to create WFModelContentLocation from serialized representation: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
    }

    (*(v4 + 8))(v8, v2);
    return 0;
  }

  type metadata accessor for WFModelContentLocation();
  LOBYTE(v21[0]) = v9;
  v10 = WFModelContentLocation.init(model:)(v21);
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    return result;
  }

  return 0;
}

double sub_21E1CAF20@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21E1E76DC(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_21E1C8F28(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21E1CAF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E1E76DC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void *sub_21E1CAFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21E1E76DC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_21E1CB024@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21E1E7780(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 40 * v4;

    sub_21E1C4248(v6, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id WFModelContentLocation.init(identifier:promptingBehaviour:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_21E3437A0();

  v6 = [v4 initWithIdentifier:v5 promptingBehaviour:a3];

  return v6;
}

{
  v5 = sub_21E3437A0();

  v8.receiver = v3;
  v8.super_class = WFModelContentLocation;
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_promptingBehaviour_, v5, a3);

  return v6;
}

id WFModelContentLocation.init(coder:)(void *a1)
{
  v4.super_class = WFModelContentLocation;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_21E1CB318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB9230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for WFModelContentLocation()
{
  result = qword_27CEB8238;
  if (!qword_27CEB8238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8238);
  }

  return result;
}

unint64_t sub_21E1CB3C4()
{
  result = qword_27CEB8240;
  if (!qword_27CEB8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8240);
  }

  return result;
}

id OUTLINED_FUNCTION_4_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return swift_slowAlloc();
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_21E343870();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_21E343870();
    }

LABEL_9:
    __break(1u);
    return sub_21E343870();
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_27CEB7FA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CEB8248;

  return v1;
}

id sub_21E1CB5BC()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEB8248 = result;
  return result;
}

uint64_t ChatMessagesPrompt.renderAsUserContentPromptVariableBinding(modelBundleQuery:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v309 = a2;
  v320 = a1;
  v5 = sub_21E342E20();
  v6 = OUTLINED_FUNCTION_0_2(v5, v353);
  v321 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v8);
  v9 = sub_21E3434D0();
  v10 = OUTLINED_FUNCTION_0_2(v9, &v348);
  v318 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v12);
  v13 = sub_21E343610();
  v14 = OUTLINED_FUNCTION_0_2(v13, &v360);
  v323 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_14_0(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8490);
  OUTLINED_FUNCTION_28_0(v17);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_40();
  v348 = v19;
  v347 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v322 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v22);
  v351 = sub_21E343600();
  OUTLINED_FUNCTION_5();
  v359 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_32_0();
  v349 = v26;
  v27 = sub_21E343500();
  OUTLINED_FUNCTION_5();
  v339[0] = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_14_0(v30);
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8250);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_14_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8258);
  v34 = OUTLINED_FUNCTION_28_0(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24();
  v350 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  OUTLINED_FUNCTION_28_0(v38);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7_1(v40);
  v41 = sub_21E342CA0();
  v42 = OUTLINED_FUNCTION_0_2(v41, v340);
  v310 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_14_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8268);
  v46 = OUTLINED_FUNCTION_28_0(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8270);
  v52 = OUTLINED_FUNCTION_28_0(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8278);
  OUTLINED_FUNCTION_0_2(v60, &v342);
  v314 = v61;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7_1(v63);
  v64 = sub_21E342ED0();
  v65 = OUTLINED_FUNCTION_0_2(v64, v339);
  v311 = v66;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_7_1(v67);
  v68 = sub_21E343630();
  v69 = OUTLINED_FUNCTION_0_2(v68, &v361);
  v338 = v70;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_14_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8280);
  OUTLINED_FUNCTION_38(v73);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v75);
  v77 = &v295[-v76];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8288);
  v79 = OUTLINED_FUNCTION_28_0(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v80);
  v82 = &v295[-v81];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8290);
  v84 = OUTLINED_FUNCTION_28_0(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_3_1();
  v88 = MEMORY[0x28223BE20](v87);
  v90 = &v295[-v89];
  v91 = MEMORY[0x28223BE20](v88);
  v93 = &v295[-v92];
  MEMORY[0x28223BE20](v91);
  v95 = &v295[-v94];
  v96 = *(sub_21E343510() + 16);

  if (!v96)
  {
    return sub_21E343580();
  }

  v97 = sub_21E343510();
  sub_21E1C602C(v97, v82);

  OUTLINED_FUNCTION_15_0(v82, 1, v27);
  v339[1] = v3;
  v339[2] = v27;
  v297 = a3;
  if (v104)
  {
    sub_21E1CE204(v82, &qword_27CEB8288);
    v99 = 1;
  }

  else
  {
    sub_21E3434E0();
    (*(v339[0] + 8))(v82, v27);
    v99 = 0;
  }

  v100 = v345;
  __swift_storeEnumTagSinglePayload(v95, v99, 1, v345);
  v101 = *(v338 + 104);
  v334 = *MEMORY[0x277D42E40];
  v298 = v101;
  v101(v93);
  __swift_storeEnumTagSinglePayload(v93, 0, 1, v100);
  v102 = v337[12];
  sub_21E1CE25C(v95, v77, &qword_27CEB8290);
  sub_21E1CE25C(v93, v77 + v102, &qword_27CEB8290);
  OUTLINED_FUNCTION_10_0(v77);
  if (v104)
  {
    sub_21E1CE204(v93, &qword_27CEB8290);
    sub_21E1CE204(v95, &qword_27CEB8290);
    OUTLINED_FUNCTION_10_0(v77 + v102);
    if (!v104)
    {
      goto LABEL_25;
    }

    sub_21E1CE204(v77, &qword_27CEB8290);
    OUTLINED_FUNCTION_36();
    v103 = v350;
  }

  else
  {
    sub_21E1CE25C(v77, v90, &qword_27CEB8290);
    OUTLINED_FUNCTION_10_0(v77 + v102);
    if (v104)
    {
      goto LABEL_24;
    }

    v105 = v328;
    (*(v338 + 32))(v328, v77 + v102, v100);
    sub_21E1CE2AC();
    v296 = sub_21E343790();
    v102 = v338 + 8;
    v106 = *(v338 + 8);
    v106(v105, v100);
    sub_21E1CE204(v93, &qword_27CEB8290);
    sub_21E1CE204(v95, &qword_27CEB8290);
    v106(v90, v345);
    v100 = v345;
    sub_21E1CE204(v77, &qword_27CEB8290);
    OUTLINED_FUNCTION_36();
    v103 = v350;
    if ((v296 & 1) == 0)
    {
LABEL_26:
      sub_21E1CD928();
      swift_allocError();
      *v120 = 0;
      return swift_willThrow();
    }
  }

  sub_21E343510();
  OUTLINED_FUNCTION_41();
  sub_21E1CD97C(v107, v108);

  v109 = OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_15_0(v109, v110, v102);
  if (v104)
  {
    sub_21E1CE204(&unk_21E3525E8, &qword_27CEB8288);
    v112 = 1;
    v111 = v336;
  }

  else
  {
    v111 = v336;
    sub_21E3434E0();
    (*(v339[0] + 8))(&unk_21E3525E8, v102);
    v112 = 0;
  }

  v113 = v332;
  v114 = v298;
  __swift_storeEnumTagSinglePayload(v111, v112, 1, v100);
  v114(v113, v334, v100);
  __swift_storeEnumTagSinglePayload(v113, 0, 1, v100);
  v115 = v337[12];
  v116 = v333;
  sub_21E1CE25C(v111, v333, &qword_27CEB8290);
  sub_21E1CE25C(v113, v116 + v115, &qword_27CEB8290);
  OUTLINED_FUNCTION_10_0(v116);
  if (v104)
  {
    OUTLINED_FUNCTION_35(v113);
    OUTLINED_FUNCTION_35(v111);
    OUTLINED_FUNCTION_10_0(v116 + v115);
    if (v104)
    {
      sub_21E1CE204(v116, &qword_27CEB8290);
      goto LABEL_28;
    }

    v77 = v116;
    goto LABEL_25;
  }

  v117 = v327;
  sub_21E1CE25C(v116, v327, &qword_27CEB8290);
  OUTLINED_FUNCTION_10_0(v116 + v115);
  if (v118)
  {
    v93 = v113;
    v95 = v111;
    v90 = v117;
    v77 = v116;
LABEL_24:
    OUTLINED_FUNCTION_35(v93);
    OUTLINED_FUNCTION_35(v95);
    OUTLINED_FUNCTION_17_0();
    v119(v90, v100);
LABEL_25:
    sub_21E1CE204(v77, &qword_27CEB8280);
    goto LABEL_26;
  }

  v121 = v338;
  v122 = v116 + v115;
  v123 = v328;
  (*(v338 + 32))(v328, v122, v100);
  sub_21E1CE2AC();
  LODWORD(v337) = sub_21E343790();
  v124 = *(v121 + 8);
  v124(v123, v100);
  sub_21E1CE204(v113, &qword_27CEB8290);
  sub_21E1CE204(v336, &qword_27CEB8290);
  v124(v327, v100);
  sub_21E1CE204(v116, &qword_27CEB8290);
  if ((v337 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v333 = 0x800000021E3599E0;
  sub_21E342D70();
  swift_allocObject();
  v125 = sub_21E342D60();
  v126 = v320;
  sub_21E342E10();
  v127 = v329;
  sub_21E342D50();
  v336 = 0x800000021E359A00;
  if (v127)
  {
    v337 = v127;

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_39();
    v128 = v324;
    v129 = v321;
LABEL_30:
    v130 = v325;
LABEL_39:
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_29_0();
    sub_21E343100();
    (*(v129 + 16))(v130, v126, v128);
    v135 = v130;
    v136 = sub_21E3434C0();
    v137 = v125;
    v138 = sub_21E343B60();
    v139 = os_log_type_enabled(v136, v138);
    v327 = 0xD000000000000012;
    if (v139)
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v358[0] = v141;
      *v140 = 136315138;
      v142 = sub_21E342E10();
      v102 = v143;
      (*(v129 + 8))(v135, v128);
      v144 = sub_21E1C80B4(v142, v102, v358);
      OUTLINED_FUNCTION_36();

      *(v140 + 4) = v144;
      _os_log_impl(&dword_21E1BD000, v136, v138, "Cannot fetch special tokens from asset for model: %s, falling back to default values", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v141);
      v145 = v141;
      v103 = v350;
      MEMORY[0x223D57360](v145, -1, -1);
      MEMORY[0x223D57360](v140, -1, -1);

      OUTLINED_FUNCTION_17_0();
      v146(v326, v319);
    }

    else
    {

      (*(v129 + 8))(v135, v128);
      OUTLINED_FUNCTION_17_0();
      v147(v137, v319);
    }

    OUTLINED_FUNCTION_9_0(0xD000000000000017);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_44();
    v126 = v323;
    goto LABEL_43;
  }

  v128 = v324;
  v129 = v321;
  if (!v354)
  {
    sub_21E1CE204(v352, &qword_27CEB82A0);
    v355 = 0u;
    v356 = 0u;
    v357 = 0;
    OUTLINED_FUNCTION_39();
    v130 = v325;
    goto LABEL_38;
  }

  v337 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82B8);
  swift_dynamicCast();
  OUTLINED_FUNCTION_39();
  v130 = v325;
  if ((v131 & 1) == 0)
  {
    v357 = 0;
    v355 = 0u;
    v356 = 0u;
    goto LABEL_38;
  }

  if (!*(&v356 + 1))
  {
LABEL_38:
    sub_21E1CE204(&v355, &qword_27CEB82A8);
    sub_21E1CD928();
    v133 = swift_allocError();
    *v134 = 1;
    OUTLINED_FUNCTION_38(v133);
    swift_willThrow();
    OUTLINED_FUNCTION_42();
    goto LABEL_39;
  }

  sub_21E1C2B8C(&v355, v358);
  __swift_project_boxed_opaque_existential_1(v358, v358[3]);
  v132 = v337;
  sub_21E342DF0();
  if (v132)
  {
    v337 = v132;
    __swift_destroy_boxed_opaque_existential_1Tm(v358);
    OUTLINED_FUNCTION_42();
    goto LABEL_30;
  }

  v150 = v315;
  sub_21E342D40();
  v151 = 0;
LABEL_82:
  OUTLINED_FUNCTION_17_0();
  v200(v317, v150);
  v201 = v316;
  sub_21E342E40();
  OUTLINED_FUNCTION_41();
  MEMORY[0x223D54780]();
  v148 = v308;
  sub_21E1CE25C(v309, v308, &qword_27CEB8260);
  v153 = v313;
  OUTLINED_FUNCTION_15_0(v148, 1, v313);
  v329 = v151;
  if (v104)
  {
    v152 = 0xD000000000000012;
    sub_21E1CE204(v148, &qword_27CEB8260);
    v202 = v201;
    v150 = v302;
    sub_21E1CE25C(v202, v302, &qword_27CEB8270);
    v126 = sub_21E342EC0();
    OUTLINED_FUNCTION_11_0(v150);
    if (v104)
    {
      sub_21E1CE204(v150, &qword_27CEB8270);
      v203 = 0xD000000000000012;
      v204 = v333;
    }

    else
    {
LABEL_94:
      v203 = sub_21E342E90();
      v209 = v208;
      OUTLINED_FUNCTION_8_0();
      (*(v210 + 8))(v150, v126);
      if (!v209)
      {
        v203 = v152;
      }

      v204 = v333;
      if (v209)
      {
        v204 = v209;
      }
    }

    v328 = v204;
    v211 = v301;
    v212 = v316;
    sub_21E1CE25C(v316, v301, &qword_27CEB8270);
    OUTLINED_FUNCTION_11_0(v211);
    v128 = v344;
    v327 = v203;
    if (v104)
    {
      sub_21E1CE204(v211, &qword_27CEB8270);
      OUTLINED_FUNCTION_9_0(v152 + 5);
    }

    else
    {
      v223 = sub_21E342EA0();
      v225 = v224;
      OUTLINED_FUNCTION_8_0();
      (*(v226 + 8))(v211, v126);
      v227 = v152 + 5;
      if (v225)
      {
        v227 = v223;
      }

      v319 = v227;
      v228 = v336;
      if (v225)
      {
        v228 = v225;
      }

      v320 = v228;
      v212 = v316;
    }

    v229 = 0x6E655F6E7275743CLL;
    v230 = v304;
    sub_21E1CE25C(v212, v304, &qword_27CEB8270);
    OUTLINED_FUNCTION_11_0(v230);
    if (v104)
    {
      v321 = 0x6E655F6E7275743CLL;
      OUTLINED_FUNCTION_23_0();
      v231 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v231, v232);
      sub_21E1CE204(v212, &qword_27CEB8270);
      v233 = OUTLINED_FUNCTION_5_1();
      v234(v233);
      sub_21E1CE204(v230, &qword_27CEB8270);
    }

    else
    {
      v235 = sub_21E342EB0();
      OUTLINED_FUNCTION_38(v235);
      v336 = v236;
      v237 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v237, v238);
      sub_21E1CE204(v212, &qword_27CEB8270);
      v239 = OUTLINED_FUNCTION_5_1();
      v240(v239);
      OUTLINED_FUNCTION_8_0();
      (*(v241 + 8))(v230, v126);
      if (v336)
      {
        v229 = v337;
      }

      v321 = v229;
      v242 = 0xEA00000000003E64;
      if (v336)
      {
        v242 = v336;
      }

      v324 = v242;
    }

    goto LABEL_144;
  }

LABEL_90:
  (*(v310 + 32))(v312, v148, v153);
  v205 = v303;
  sub_21E1CE25C(v126, v303, &qword_27CEB8268);
  v206 = sub_21E342E80();
  v207 = OUTLINED_FUNCTION_15_0(v205, 1, v206);
  if (v104)
  {
    sub_21E1CE204(v205, &qword_27CEB8268);
  }

  else
  {
    MEMORY[0x223D547A0](v207);
    OUTLINED_FUNCTION_16_0();
    (*(v213 + 8))(v205, v206);
    if (v126)
    {
      v214 = sub_21E342C80();
      v216 = sub_21E1CAF84(v214, v215, v126);
      v218 = v217;

      v328 = v218;
      if (v218)
      {
        goto LABEL_106;
      }
    }
  }

  v219 = v299;
  sub_21E1CE25C(v316, v299, &qword_27CEB8270);
  v220 = sub_21E342EC0();
  OUTLINED_FUNCTION_11_0(v219);
  if (v104)
  {
    sub_21E1CE204(v219, &qword_27CEB8270);

    v216 = 0xD000000000000012;
    OUTLINED_FUNCTION_19_0();
LABEL_106:
    OUTLINED_FUNCTION_44();
    v221 = OUTLINED_FUNCTION_27_0();
    v222 = v306;
    goto LABEL_123;
  }

  v216 = sub_21E342E90();
  v244 = v243;
  OUTLINED_FUNCTION_8_0();
  (*(v245 + 8))(v219, v220);

  v328 = v244;
  v222 = v306;
  if (!v244)
  {
    v216 = 0xD000000000000012;
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_44();
  v221 = OUTLINED_FUNCTION_27_0();
LABEL_123:
  v246 = v305;
  sub_21E1CE25C(v221, v305, &qword_27CEB8268);
  v247 = OUTLINED_FUNCTION_30_0();
  v249 = OUTLINED_FUNCTION_15_0(v247, v248, v206);
  if (v104)
  {
    sub_21E1CE204(v246, &qword_27CEB8268);
  }

  else
  {
    MEMORY[0x223D547B0](v249);
    OUTLINED_FUNCTION_16_0();
    (*(v250 + 8))(v246, v206);
    if (v246)
    {
      v251 = sub_21E342C80();
      v319 = sub_21E1CAF84(v251, v252, v246);
      v254 = v253;

      v320 = v254;
      if (v254)
      {
        goto LABEL_133;
      }
    }
  }

  sub_21E1CE25C(v316, v222, &qword_27CEB8270);
  v255 = sub_21E342EC0();
  OUTLINED_FUNCTION_11_0(v222);
  if (v104)
  {
    sub_21E1CE204(v222, &qword_27CEB8270);

LABEL_132:
    OUTLINED_FUNCTION_9_0(0xD000000000000017);
    goto LABEL_133;
  }

  v319 = sub_21E342EA0();
  v257 = v256;
  OUTLINED_FUNCTION_8_0();
  (*(v258 + 8))(v222, v255);

  v320 = v257;
  if (!v257)
  {
    goto LABEL_132;
  }

LABEL_133:
  v259 = OUTLINED_FUNCTION_27_0();
  v260 = v307;
  sub_21E1CE25C(v259, v307, &qword_27CEB8268);
  v261 = OUTLINED_FUNCTION_30_0();
  v263 = OUTLINED_FUNCTION_15_0(v261, v262, v206);
  v327 = v216;
  if (v104)
  {
    sub_21E1CE204(v260, &qword_27CEB8268);
    goto LABEL_139;
  }

  MEMORY[0x223D547C0](v263);
  OUTLINED_FUNCTION_16_0();
  (*(v264 + 8))(v260, v206);
  if (!v260 || (v265 = sub_21E342C80(), v321 = sub_21E1CAF84(v265, v266, v260), v268 = v267, , , (v324 = v268) == 0))
  {
LABEL_139:
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_29_0();
    v275 = v316;
    v276 = v300;
    sub_21E1CE25C(v316, v300, &qword_27CEB8270);
    v277 = sub_21E342EC0();
    OUTLINED_FUNCTION_11_0(v276);
    if (v104)
    {
      v278 = OUTLINED_FUNCTION_6_0();
      v279(v278);
      v280 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v280, v281);
      OUTLINED_FUNCTION_35(v275);
      v282 = OUTLINED_FUNCTION_5_1();
      v283(v282);
      OUTLINED_FUNCTION_35(v276);
    }

    else
    {
      v284 = v276;
      v285 = sub_21E342EB0();
      OUTLINED_FUNCTION_38(v285);
      v287 = v286;
      v288 = OUTLINED_FUNCTION_6_0();
      v289(v288);
      v290 = OUTLINED_FUNCTION_27_0();
      sub_21E1CE204(v290, v291);
      sub_21E1CE204(v275, &qword_27CEB8270);
      v292 = OUTLINED_FUNCTION_5_1();
      v293(v292);
      OUTLINED_FUNCTION_8_0();
      (*(v294 + 8))(v284, v277);

      if (v287)
      {
        v321 = v337;
        v324 = v287;
      }
    }

    goto LABEL_144;
  }

  v269 = OUTLINED_FUNCTION_6_0();
  v270(v269);
  v271 = OUTLINED_FUNCTION_27_0();
  sub_21E1CE204(v271, v272);
  sub_21E1CE204(v316, &qword_27CEB8270);
  v273 = OUTLINED_FUNCTION_5_1();
  v274(v273);
LABEL_144:
  v126 = v323;
  __swift_destroy_boxed_opaque_existential_1Tm(v358);
LABEL_43:
  v148 = 0;
  v325 = sub_21E343510();
  v149 = *(v325 + 16);
  v323 = v339[0] + 16;
  v333 = (v339[0] + 32);
  v326 = (v338 + 88);
  LODWORD(v318) = *MEMORY[0x277D42E50];
  v150 = v322 + 104;
  v337 = (v359 + 32);
  v151 = (v126 + 8);
  v332 = v339[0] + 8;
  v152 = MEMORY[0x277D84F90];
  LODWORD(v336) = *MEMORY[0x277D42DD0];
  for (i = v149; ; v149 = i)
  {
    v153 = v343;
    if (v148 == v149)
    {
      v154 = 1;
      v148 = v149;
    }

    else
    {
      if ((v148 & 0x8000000000000000) != 0)
      {
        goto LABEL_88;
      }

      if (v148 >= *(v325 + 16))
      {
        goto LABEL_89;
      }

      v155 = v339[0];
      v156 = v325 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v148;
      v157 = *(v343 + 48);
      v158 = v330;
      *v330 = v148;
      (*(v155 + 16))(v158 + v157, v156, v102);
      v159 = v158;
      v103 = v350;
      sub_21E1CDA44(v159, v350, &qword_27CEB8250);
      v154 = 0;
      ++v148;
    }

    __swift_storeEnumTagSinglePayload(v103, v154, 1, v153);
    v160 = v342;
    sub_21E1CDA44(v103, v342, &qword_27CEB8258);
    v161 = OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_15_0(v161, v162, v153);
    if (v104)
    {

      sub_21E343580();
    }

    v103 = *v160;
    (*v333)(v128, v160 + *(v153 + 48), v102);
    if (v103 >= 1)
    {
      break;
    }

LABEL_58:
    OUTLINED_FUNCTION_41();
    sub_21E3434F0();
    v153 = sub_21E343590();
    (*v151)(v160, v341);
    v126 = *(v153 + 16);
    v102 = *(v152 + 16);
    v128 = v102 + v126;
    if (__OFADD__(v102, v126))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v128 > *(v152 + 24) >> 1)
    {
      if (v102 <= v128)
      {
        v177 = v102 + v126;
      }

      else
      {
        v177 = v102;
      }

      v152 = sub_21E1CDC4C(isUniquelyReferenced_nonNull_native, v177, 1, v152);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_44();
    if (*(v153 + 16))
    {
      if ((*(v152 + 24) >> 1) - *(v152 + 16) < v126)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      swift_arrayInitWithCopy();

      if (v126)
      {
        v178 = *(v152 + 16);
        v179 = __OFADD__(v178, v126);
        v180 = v178 + v126;
        if (v179)
        {
          __break(1u);
          goto LABEL_94;
        }

        *(v152 + 16) = v180;
      }
    }

    else
    {

      if (v126)
      {
        goto LABEL_81;
      }
    }

    v126 = *(sub_21E343510() + 16);

    if (v103 >= v126 - 1)
    {
      v194 = OUTLINED_FUNCTION_12_0();
      v195(v194);
      v103 = v350;
    }

    else
    {
      v181 = v346;
      v182 = v324;
      *v346 = v321;
      v181[1] = v182;
      v183 = OUTLINED_FUNCTION_31_0();
      v184(v183);
      sub_21E3435F0();
      v185 = OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v185, v186, 1, v187);

      OUTLINED_FUNCTION_48();
      v189 = *(v152 + 16);
      v188 = *(v152 + 24);
      v126 = v189 + 1;
      v103 = v350;
      if (v189 >= v188 >> 1)
      {
        v152 = OUTLINED_FUNCTION_34_0(v188);
      }

      v190 = OUTLINED_FUNCTION_12_0();
      v191(v190);
      v192 = OUTLINED_FUNCTION_21_0();
      v193(v192, v339[3], v351);
    }
  }

  OUTLINED_FUNCTION_41();
  sub_21E3434E0();
  v163 = (*v326)(v160, v345);
  v164 = v327;
  if (v163 == v334 || (v164 = v319, v163 == v318))
  {

    v166 = v346;
    *v346 = v164;
    v166[1] = v165;
    v167 = OUTLINED_FUNCTION_31_0();
    v168(v167);
    sub_21E3435F0();
    v169 = OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v169, v170, 1, v171);
    OUTLINED_FUNCTION_48();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_21E1CDC4C(0, *(v152 + 16) + 1, 1, v152);
    }

    v173 = *(v152 + 16);
    v172 = *(v152 + 24);
    v160 = (v173 + 1);
    if (v173 >= v172 >> 1)
    {
      v152 = OUTLINED_FUNCTION_34_0(v172);
    }

    v174 = OUTLINED_FUNCTION_21_0();
    v175(v174, v349, v351);
    goto LABEL_58;
  }

  sub_21E1CD928();
  swift_allocError();
  *v196 = 3;
  swift_willThrow();

  v197 = OUTLINED_FUNCTION_12_0();
  v198(v197);
  OUTLINED_FUNCTION_17_0();
  return v199(v335, v345);
}

unint64_t sub_21E1CD928()
{
  result = qword_27CEB8298;
  if (!qword_27CEB8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8298);
  }

  return result;
}

uint64_t sub_21E1CD97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_21E343500();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_21E343500();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_21E1CDA44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_13_0();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t ChatMessagesPrompt.RenderAsUserContentPromptVariableBindingError.hashValue.getter()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

uint64_t sub_21E1CDB28()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

void sub_21E1CDB74()
{
  OUTLINED_FUNCTION_46();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82F0);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_43(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_20_0();
        sub_21E1D57F8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82F8);
    OUTLINED_FUNCTION_33_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

size_t sub_21E1CDC4C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_21E1CE108(v9, a2, &qword_27CEB8660, &unk_21E3533E0, MEMORY[0x277D42E08]);
  v11 = *(sub_21E343600() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_21E1D5820(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_49();
  }

  return v10;
}

void sub_21E1CDD4C()
{
  OUTLINED_FUNCTION_46();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
      v7 = swift_allocObject();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_22_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_20_0();
        sub_21E1D5838(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v5)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_21E1CDE0C()
{
  OUTLINED_FUNCTION_46();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E0);
      v7 = swift_allocObject();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_22_0();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_20_0();
        sub_21E1D5838(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v5)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

size_t sub_21E1CDED0(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_21E1CE108(v9, a2, &qword_27CEB82D0, &unk_21E352708, MEMORY[0x277D42D30]);
  v11 = *(sub_21E3431A0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_21E1D587C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_49();
  }

  return v10;
}

void sub_21E1CDFD0()
{
  OUTLINED_FUNCTION_46();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_26_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_0();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84A0);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_43(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_20_0();
        sub_21E1D5858(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_45();
  if (!v4)
  {
    OUTLINED_FUNCTION_25_0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_21E1CE098(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82D8);
  v4 = swift_allocObject();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_22_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_21E1CE108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21E1CE204(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_13_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21E1CE25C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_13_0();
  (*(v5 + 16))(v3, v4);
  return v3;
}

unint64_t sub_21E1CE2AC()
{
  result = qword_27CEB82C0;
  if (!qword_27CEB82C0)
  {
    sub_21E343630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB82C0);
  }

  return result;
}

unint64_t sub_21E1CE308()
{
  result = qword_27CEB82C8;
  if (!qword_27CEB82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB82C8);
  }

  return result;
}

uint64_t _s45RenderAsUserContentPromptVariableBindingErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s45RenderAsUserContentPromptVariableBindingErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return swift_arrayInitWithCopy();
}

size_t OUTLINED_FUNCTION_34_0@<X0>(unint64_t a1@<X8>)
{

  return sub_21E1CDC4C(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return sub_21E1CE204(a1, v1);
}

uint64_t OUTLINED_FUNCTION_43(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_21E3435E0();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_arrayInitWithCopy();
}

uint64_t static WFAskLLMUserPrompt.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  return byte_27CEB8300;
}

uint64_t static WFAskLLMUserPrompt.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_67();
  byte_27CEB8300 = a1;
  return result;
}

uint64_t sub_21E1CE984@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CEB8300;
  return result;
}

uint64_t sub_21E1CE9D0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CEB8300 = v1;
  return result;
}

uint64_t WFAskLLMUserPrompt.TextPromptComponent.componentValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v7 = v6 - v5;
  sub_21E1CEB48(v2, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308) + 48);
  }

  sub_21E3435D0();
  OUTLINED_FUNCTION_13_0();
  return (*(v8 + 32))(a1, v7);
}

uint64_t type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent()
{
  result = qword_27CEB8570;
  if (!qword_27CEB8570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E1CEB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WFAskLLMUserPrompt.TextPromptComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v44 = (v8 - v9);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - v11;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8310);
  OUTLINED_FUNCTION_28_0(v22);
  OUTLINED_FUNCTION_37();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v42 - v25;
  v27 = (&v42 + *(v24 + 56) - v25);
  sub_21E1CEB48(v3, &v42 - v25);
  sub_21E1CEB48(v1, v27);
  OUTLINED_FUNCTION_62();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21E1CEB48(v26, v21);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v14, v27, v4);
      sub_21E3435C0();
      v38 = *(v6 + 8);
      v39 = OUTLINED_FUNCTION_60();
      v38(v39);
      (v38)(v21, v4);
LABEL_16:
      sub_21E1CEF88(v26);
      goto LABEL_17;
    }

    (*(v6 + 8))(v21, v4);
LABEL_12:
    sub_21E1CE204(v26, &qword_27CEB8310);
    goto LABEL_17;
  }

  sub_21E1CEB48(v26, v18);
  v29 = *v18;
  v28 = *(v18 + 1);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(&v18[v30], v4);

    goto LABEL_12;
  }

  v31 = v27[1];
  v42 = *v27;
  v43 = v29;
  v32 = *(v6 + 32);
  v32(v45, &v18[v30], v4);
  v33 = v27 + v30;
  v34 = v44;
  v32(v44, v33, v4);
  if (v43 == v42 && v28 == v31)
  {

    goto LABEL_15;
  }

  v36 = sub_21E343F80();

  if (v36)
  {
LABEL_15:
    v40 = v45;
    sub_21E3435C0();
    v41 = *(v6 + 8);
    v41(v34, v4);
    v41(v40, v4);
    goto LABEL_16;
  }

  v37 = *(v6 + 8);
  v37(v34, v4);
  v37(v45, v4);
  sub_21E1CEF88(v26);
LABEL_17:
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1CEF88(uint64_t a1)
{
  v2 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E1CEFE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1CF0BC(char a1)
{
  if (a1)
  {
    return 0x797469746E65;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_21E1CF0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1CEFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1CF138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E1CF0A8();
  *a1 = result;
  return result;
}

uint64_t sub_21E1CF160(uint64_t a1)
{
  v2 = sub_21E1CF998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1CF19C(uint64_t a1)
{
  v2 = sub_21E1CF998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1CF1D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1CF2A0(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21E1CF2D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E1CF35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1CF1D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1CF384(uint64_t a1)
{
  v2 = sub_21E1CF9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1CF3C0(uint64_t a1)
{
  v2 = sub_21E1CF9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1CF404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1CF2D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E1CF44C@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21E1CF478(uint64_t a1)
{
  v2 = sub_21E1CFA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1CF4B4(uint64_t a1)
{
  v2 = sub_21E1CFA40();

  return MEMORY[0x2821FE720](a1, v2);
}

void WFAskLLMUserPrompt.TextPromptComponent.encode(to:)()
{
  OUTLINED_FUNCTION_30_1();
  v46 = v1;
  v44 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8318);
  OUTLINED_FUNCTION_5();
  v42 = v7;
  v43 = v6;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_40();
  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8320);
  OUTLINED_FUNCTION_5();
  v40 = v11;
  v41 = v10;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_33_1();
  v48 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v45 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v49 = v15 - v16;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_54();
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8328);
  OUTLINED_FUNCTION_5();
  v47 = v23;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  OUTLINED_FUNCTION_58(v5, v5[3]);
  sub_21E1CF998();
  sub_21E344060();
  sub_21E1CEB48(v44, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308);
    v28 = v45;
    v29 = v48;
    (*(v45 + 32))(v49, v21 + *(v27 + 48), v48);
    sub_21E1CF9EC();
    OUTLINED_FUNCTION_49_0();
    sub_21E343EE0();
    v30 = v43;
    v31 = v46;
    sub_21E343F00();

    if (!v31)
    {
      OUTLINED_FUNCTION_2_0();
      sub_21E1D6F0C(v37, 255, v38);
      sub_21E343F40();
    }

    (*(v42 + 8))(v50, v30);
    (*(v28 + 8))(v49, v29);
  }

  else
  {
    (*(v45 + 32))(v2, v21, v48);
    sub_21E1CFA40();
    OUTLINED_FUNCTION_49_0();
    sub_21E343EE0();
    OUTLINED_FUNCTION_2_0();
    sub_21E1D6F0C(v32, 255, v33);
    v34 = v41;
    sub_21E343F40();
    (*(v40 + 8))(v3, v34);
    v35 = OUTLINED_FUNCTION_29_1();
    v36(v35);
  }

  (*(v47 + 8))(v26, v22);
  OUTLINED_FUNCTION_31_1();
}

unint64_t sub_21E1CF998()
{
  result = qword_27CEB8330;
  if (!qword_27CEB8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8330);
  }

  return result;
}

unint64_t sub_21E1CF9EC()
{
  result = qword_27CEB8338;
  if (!qword_27CEB8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8338);
  }

  return result;
}

unint64_t sub_21E1CFA40()
{
  result = qword_27CEB8348;
  if (!qword_27CEB8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8348);
  }

  return result;
}

void WFAskLLMUserPrompt.TextPromptComponent.init(from:)()
{
  OUTLINED_FUNCTION_30_1();
  v75 = v0;
  v2 = v1;
  v66 = v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8350);
  OUTLINED_FUNCTION_5();
  v71 = v4;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40();
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8358);
  OUTLINED_FUNCTION_5();
  v68 = v8;
  v69 = v7;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_40();
  v73 = v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8360);
  OUTLINED_FUNCTION_5();
  v72 = v11;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v17 = (v15 - v16);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  OUTLINED_FUNCTION_58(v2, v2[3]);
  sub_21E1CF998();
  v24 = v75;
  sub_21E344050();
  if (v24)
  {
    goto LABEL_8;
  }

  v62 = v17;
  v63 = v21;
  v64 = v23;
  v65 = v13;
  v75 = v2;
  v25 = v74;
  OUTLINED_FUNCTION_64();
  v26 = sub_21E343ED0();
  v30 = sub_21E1D66FC(v26, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v35 = v65;
    v36 = sub_21E343D70();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8368);
    *v38 = v35;
    OUTLINED_FUNCTION_64();
    v39 = sub_21E343E60();
    OUTLINED_FUNCTION_38_0(v39, "Invalid number of keys found, expected one.");
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_6_1();
    v41(v40);
    v2 = v75;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_9:
    OUTLINED_FUNCTION_31_1();
    return;
  }

  if (v28 < (v29 >> 1))
  {
    v76 = *(v27 + v28);
    sub_21E1D6E14(v28 + 1, v29 >> 1, v30, v27, v28, v29);
    v32 = v31;
    v34 = v33;
    swift_unknownObjectRelease();
    if (v32 == v34 >> 1)
    {
      if (v76)
      {
        sub_21E1CF9EC();
        OUTLINED_FUNCTION_49_0();
        sub_21E343E50();
        v46 = sub_21E343E80();
        v48 = v47;
        v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308) + 48);
        v49 = v62;
        *v62 = v46;
        v49[1] = v48;
        v69 = v48;
        sub_21E3435D0();
        OUTLINED_FUNCTION_2_0();
        sub_21E1D6F0C(v50, 255, v51);
        sub_21E343EC0();
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_32_1();
        v57(v56);
        v58 = OUTLINED_FUNCTION_6_1();
        v59(v58);
        swift_storeEnumTagMultiPayload();
        v60 = v49;
        v61 = v64;
      }

      else
      {
        sub_21E1CFA40();
        OUTLINED_FUNCTION_49_0();
        sub_21E343E50();
        v61 = v64;
        v42 = v25;
        sub_21E3435D0();
        OUTLINED_FUNCTION_2_0();
        sub_21E1D6F0C(v43, 255, v44);
        v60 = v63;
        v45 = v69;
        sub_21E343EC0();
        swift_unknownObjectRelease();
        v52 = OUTLINED_FUNCTION_22_1();
        v53(v52, v45);
        v54 = OUTLINED_FUNCTION_16_1();
        v55(v54, v42);
        swift_storeEnumTagMultiPayload();
      }

      sub_21E1D6744(v60, v61);
      sub_21E1D6744(v61, v66);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t WFAskLLMUserPrompt.EntityDisplayOption.hashValue.getter()
{
  v1 = *v0;
  sub_21E344020();
  MEMORY[0x223D55980](v1);
  return sub_21E344040();
}

id WFAskLLMUserPrompt.init(textComponents:documents:images:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents] = a1;
  *&v3[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents] = a2;
  *&v3[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for WFAskLLMUserPrompt();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_21E1D02D4()
{
  OUTLINED_FUNCTION_25_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8490);
  OUTLINED_FUNCTION_28_0(v2);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40();
  v40 = v4;
  OUTLINED_FUNCTION_15_1();
  v39 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v38 = v9 - v8;
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_3();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_55();
  v37 = sub_21E343600();
  OUTLINED_FUNCTION_5();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_1();
  v22 = v21 - v20;
  v23 = *(v0 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v24 = *(v23 + 16);
  if (v24)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21E1D5974();
    OUTLINED_FUNCTION_24_1();
    v25 = v11;
    v27 = v23 + v26;
    v36 = *(v25 + 72);
    do
    {
      sub_21E1CEB48(v27, v1);
      v28 = OUTLINED_FUNCTION_57();
      sub_21E1CEB48(v28, v29);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v31 = v15;
      if (EnumCaseMultiPayload == 1)
      {

        v31 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308) + 48);
      }

      (*(v6 + 32))(v38, v31, v39);
      v32 = sub_21E3435F0();
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v32);
      sub_21E3435E0();
      sub_21E1CEF88(v1);
      v34 = *(v41 + 16);
      v33 = *(v41 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_42_0(v33);
        sub_21E1D5974();
      }

      *(v41 + 16) = v34 + 1;
      OUTLINED_FUNCTION_24_1();
      (*(v18 + 32))(v41 + v35 + *(v18 + 72) * v34, v22, v37);
      v27 += v36;
      --v24;
    }

    while (v24);
  }

  sub_21E343580();
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1D0618(void *a1)
{
  sub_21E342A20();
  OUTLINED_FUNCTION_68();
  sub_21E342A10();
  type metadata accessor for WFAskLLMUserPrompt();
  OUTLINED_FUNCTION_3_2();
  sub_21E1D6F0C(v2, v3, v4);
  v5 = sub_21E342A00();
  v7 = v6;
  v8 = sub_21E342BC0();
  v9 = sub_21E3437A0();
  [a1 encodeObject:v8 forKey:v9];

  sub_21E1C99C4(v5, v7);
}

id WFAskLLMUserPrompt.init(coder:)()
{
  OUTLINED_FUNCTION_41_0();
  swift_getObjectType();
  sub_21E3429C0();
  OUTLINED_FUNCTION_68();
  sub_21E3429B0();
  sub_21E1D67CC();
  OUTLINED_FUNCTION_66();
  v2 = sub_21E343C20();
  if (v2)
  {
    v3 = v2;
    sub_21E342BF0();
    OUTLINED_FUNCTION_3_2();
    sub_21E1D6F0C(v4, v5, v6);
    sub_21E3429A0();

    v7 = OUTLINED_FUNCTION_57();
    sub_21E1C99C4(v7, v8);
    v9 = v14;
    *&v0[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents] = *&v14[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents];
    *&v0[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents] = *&v9[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents];
    v10 = *&v9[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images];

    *&v0[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images] = v10;
    v13.receiver = v0;
    v13.super_class = type metadata accessor for WFAskLLMUserPrompt();
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    type metadata accessor for WFAskLLMUserPrompt();
    OUTLINED_FUNCTION_56();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

void sub_21E1D09A0()
{
  OUTLINED_FUNCTION_25_1();
  v1 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_3();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_0();
  v39 = v9;
  OUTLINED_FUNCTION_15_1();
  type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_3();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_0();
  v38 = v16;
  v17 = *(v0 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = 0;
    v37 = v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = (v3 + 32);
    v36 = *MEMORY[0x277D42DD0];
    v35 = v18 - 1;
    while (v19 < *(v17 + 16))
    {
      v21 = v15;
      sub_21E1CEB48(v37 + *(v15 + 72) * v19, v38);
      sub_21E1D6744(v38, v13);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = v13;
      if (EnumCaseMultiPayload == 1)
      {

        v23 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308) + 48);
      }

      v24 = *v20;
      (*v20)(v39, v23, v1);
      v24(v7, v39, v1);
      v25 = OUTLINED_FUNCTION_63();
      if (v26(v25) != v36)
      {
        v33 = OUTLINED_FUNCTION_63();
        v34(v33);
        goto LABEL_15;
      }

      v27 = OUTLINED_FUNCTION_63();
      v28(v27);
      v30 = *v7;
      v29 = v7[1];

      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31)
      {
        v32 = v35 == v19++;
        v15 = v21;
        if (!v32)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_28_1();
  }
}

void sub_21E1D0C70()
{
  OUTLINED_FUNCTION_25_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83A8);
  OUTLINED_FUNCTION_28_0(v3);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v4);
  v6 = &v53 - v5;
  v7 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v54 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v65 = &v53 - v14;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_55();
  v16 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v69 = 0;
  v70 = 0xE000000000000000;
  v55 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v25 = *(v19 + 72);
    v62 = (v54 + 32);
    v63 = v25;
    v60 = v54 + 88;
    v61 = v54 + 16;
    v59 = *MEMORY[0x277D42DD0];
    v56 = v54 + 96;
    v57 = v12;
    v64 = v6;
    v66 = (v54 + 8);
    do
    {
      sub_21E1CEB48(v24, v21);
      sub_21E1CEB48(v21, v1);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = v1;
      if (EnumCaseMultiPayload == 1)
      {

        v27 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308) + 48);
      }

      v28 = v65;
      (*v62)(v65, v27, v7);
      sub_21E3435B0();
      v29 = *v66;
      (*v66)(v28, v7);
      OUTLINED_FUNCTION_39_0();
      v30(v12, v2, v7);
      v31 = OUTLINED_FUNCTION_20_1();
      v33 = v32(v31);
      if (v33 == v59)
      {
        v34 = OUTLINED_FUNCTION_20_1();
        v35(v34);
        v36 = sub_21E1D1184(*v12);
        v58 = v23;
        v37 = v7;
        v38 = v21;
        v39 = v1;
        v40 = v16;
        v41 = v2;
        v42 = v36;
        v44 = v43;

        v67 = v42;
        v68 = v44;
        v2 = v41;
        v16 = v40;
        v1 = v39;
        v21 = v38;
        v7 = v37;
        v23 = v58;

        MEMORY[0x223D55250](10, 0xE100000000000000);

        MEMORY[0x223D55250](v67, v68);
        v12 = v57;

        v29(v2, v7);
        sub_21E1CEF88(v21);
      }

      else
      {
        v29(v2, v7);
        sub_21E1CEF88(v21);
        v45 = OUTLINED_FUNCTION_20_1();
        (v29)(v45);
      }

      v6 = v64;
      v24 += v63;
      --v23;
    }

    while (v23);
  }

  v46 = *(v55 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = *(v54 + 16);
    v49 = v46 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v50 = *(v54 + 72);
    do
    {
      v51 = OUTLINED_FUNCTION_63();
      v48(v51);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      MEMORY[0x223D55250](0x203E6567616D693CLL, 0xE800000000000000);
      sub_21E1CE204(v6, &qword_27CEB83A8);
      v49 += v50;
      --v47;
    }

    while (v47);
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  if (*(*(v55 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents) + 16))
  {
    v67 = *(*(v55 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents) + 16);
    v67 = sub_21E343F60();
    v68 = v52;

    MEMORY[0x223D55250](0x6E656D75636F6420, 0xEB00000000207374);

    MEMORY[0x223D55250](v67, v68);
  }

  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1D1184(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_21E343820();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E343810();
  v6 = sub_21E3437F0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v9 = objc_opt_self();
  v10 = sub_21E342BC0();
  v28 = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:&v28];

  v12 = v28;
  if (!v11)
  {
    v22 = v12;
    v23 = sub_21E342B50();

    swift_willThrow();
    sub_21E1D8430(v6, v8);

    goto LABEL_8;
  }

  sub_21E343CE0();
  swift_unknownObjectRelease();
  sub_21E1D8444(v29, &v30);
  __swift_project_boxed_opaque_existential_1(&v30, v31);
  v13 = sub_21E343F70();
  *&v29[0] = 0;
  v14 = [v9 dataWithJSONObject:v13 options:3 error:v29];
  swift_unknownObjectRelease();
  v15 = *&v29[0];
  if (!v14)
  {
    v24 = v15;
    v25 = sub_21E342B50();

    swift_willThrow();
    sub_21E1D8430(v6, v8);

    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    goto LABEL_8;
  }

  v16 = sub_21E342BF0();
  v18 = v17;

  sub_21E343810();
  v19 = sub_21E343800();
  v21 = v20;
  sub_21E1D8430(v6, v8);
  sub_21E1C99C4(v16, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  if (!v21)
  {
LABEL_8:

    return a1;
  }

  return v19;
}

void sub_21E1D1464()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v62 = v53 - v13;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_54();
  v61 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v16);
  v19 = v53 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents);
  v21 = *(v20 + 16);
  if (v21)
  {
    v54 = *v4;
    v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v60 = *(v17 + 72);
    v63 = (v7 + 32);
    v58 = v7 + 88;
    v57 = *MEMORY[0x277D42DD0];
    v56 = v7 + 8;
    v53[0] = 0x800000021E359A50;
    v53[1] = v7 + 96;
    v23 = MEMORY[0x277D84F90];
    v55 = v11;
    v59 = v1;
    while (1)
    {
      sub_21E1CEB48(v22, v19);
      v24 = OUTLINED_FUNCTION_57();
      sub_21E1CEB48(v24, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_21E1CEF88(v19);
      (*v63)(v1, v2, v5);
      v33 = OUTLINED_FUNCTION_29_1();
      v35 = v34(v33);
      if (v35 == v57)
      {
        v36 = OUTLINED_FUNCTION_29_1();
        v37(v36);
        v30 = *v1;
        v31 = v1[1];
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_39_0();
      v38 = OUTLINED_FUNCTION_29_1();
      v39(v38);
LABEL_19:
      v22 += v60;
      if (!--v21)
      {
        goto LABEL_23;
      }
    }

    v27 = *v2;
    v26 = v2[1];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8308);
    v29 = *v63;
    (*v63)(v62, v2 + *(v28 + 48), v5);
    if (v54)
    {
      if (v54 == 1)
      {
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_21E343D20();

        v64 = 0xD000000000000012;
        v65 = v53[0];
        MEMORY[0x223D55250](v27, v26);

        MEMORY[0x223D55250](62, 0xE100000000000000);
        v30 = v64;
        v31 = v65;
        OUTLINED_FUNCTION_39_0();
        v32(v62, v5);
        sub_21E1CEF88(v19);
        goto LABEL_13;
      }

      sub_21E1CEF88(v19);

      v29(v11, v62, v5);
      v41 = OUTLINED_FUNCTION_37_0();
      v43 = v42(v41);
      if (v43 == v57)
      {
        v44 = OUTLINED_FUNCTION_37_0();
        v45(v44);
        v30 = *v11;
        v31 = v11[1];
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E1CDD4C();
          v23 = v51;
        }

        v47 = *(v23 + 16);
        v46 = *(v23 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_42_0(v46);
          sub_21E1CDD4C();
          v23 = v52;
        }

        *(v23 + 16) = v47 + 1;
        v48 = v23 + 16 * v47;
        *(v48 + 32) = v30;
        *(v48 + 40) = v31;
        v11 = v55;
      }

      else
      {
        v49 = OUTLINED_FUNCTION_37_0();
        v50(v49);
      }
    }

    else
    {

      OUTLINED_FUNCTION_39_0();
      v40(v62, v5);
      sub_21E1CEF88(v19);
    }

    v1 = v59;
    goto LABEL_19;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:
  v64 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83B0);
  sub_21E1D6810();
  sub_21E343780();

  OUTLINED_FUNCTION_28_1();
}

id WFAskLLMUserPrompt.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21E1D19A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D6F4374786574 && a2 == 0xEE0073746E656E6FLL;
  if (v4 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75636F64 && a2 == 0xE900000000000073;
    if (v6 || (sub_21E343F80() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_21E343F80();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21E1D1ACC(unsigned __int8 a1)
{
  sub_21E344020();
  MEMORY[0x223D55980](a1);
  return sub_21E344040();
}

uint64_t sub_21E1D1B14(char a1)
{
  if (!a1)
  {
    return 0x706D6F4374786574;
  }

  if (a1 == 1)
  {
    return 0x746E656D75636F64;
  }

  return 0x736567616D69;
}

uint64_t sub_21E1D1B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D19A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1D1BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E1D1AC4();
  *a1 = result;
  return result;
}

uint64_t sub_21E1D1BD8(uint64_t a1)
{
  v2 = sub_21E1D6874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D1C14(uint64_t a1)
{
  v2 = sub_21E1D6874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1D1CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83C0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_34_1();
  v2 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_58(v2, v3);
  sub_21E1D6874();
  sub_21E344060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83D0);
  sub_21E1D68C8();
  OUTLINED_FUNCTION_12_1();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83E8);
    sub_21E1D6980();
    OUTLINED_FUNCTION_12_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8400);
    sub_21E1D6A38();
    OUTLINED_FUNCTION_12_1();
  }

  v4 = OUTLINED_FUNCTION_29_1();
  return v5(v4);
}

void WFAskLLMUserPrompt.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8410);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_58(v13, v13[3]);
  sub_21E1D6874();
  sub_21E344050();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    type metadata accessor for WFAskLLMUserPrompt();
    OUTLINED_FUNCTION_56();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83D0);
    sub_21E1D6AF0();
    OUTLINED_FUNCTION_7_2();
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_textComponents] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB83E8);
    sub_21E1D6BA8();
    OUTLINED_FUNCTION_7_2();
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_documents] = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8400);
    v18 = 2;
    sub_21E1D6C60();
    OUTLINED_FUNCTION_7_2();
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images] = a10;
    v17.receiver = v10;
    v17.super_class = type metadata accessor for WFAskLLMUserPrompt();
    objc_msgSendSuper2(&v17, sel_init);
    v15 = OUTLINED_FUNCTION_17_1();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  OUTLINED_FUNCTION_31_1();
}

void sub_21E1D2124(void *a1@<X8>)
{
  WFAskLLMUserPrompt.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_21E1D2174@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_21E343610();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  sub_21E1D02D4();
  v8 = MEMORY[0x277D42E18];
  sub_21E343570();
  v9 = *(v2 + 8);
  v9(v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A8);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21E3522F0;
  (*(v2 + 16))(v11 + v10, v7, v1);
  MEMORY[0x223D54EA0](v11, v1, v8);

  return (v9)(v7, v1);
}

uint64_t sub_21E1D233C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E343610();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = MEMORY[0x277D42EC0];
  v13[0] = a1;
  v13[1] = a2;

  v8 = MEMORY[0x277D42E18];
  sub_21E343560();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21E3522F0;
  (*(v5 + 16))(v10 + v9, v7, v4);
  MEMORY[0x223D54EA0](v10, v4, v8);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E1D24F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1919251317 && a2 == 0xE400000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61747369737361 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1D25C4(char a1)
{
  if (a1)
  {
    return 0x6E61747369737361;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_21E1D25F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_21E343F80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526C616E69467369 && a2 == 0xEE00747365757165)
  {

    return 1;
  }

  else
  {
    v7 = sub_21E343F80();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21E1D26C0(char a1)
{
  sub_21E344020();
  MEMORY[0x223D55980](a1 & 1);
  return sub_21E344040();
}

uint64_t sub_21E1D2708(uint64_t a1)
{
  v2 = sub_21E1D6D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D2744(uint64_t a1)
{
  v2 = sub_21E1D6D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1D2788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D24F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E1D27B0(uint64_t a1)
{
  v2 = sub_21E1D6D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D27EC(uint64_t a1)
{
  v2 = sub_21E1D6D18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21E1D2828(uint64_t a1)
{
  v2 = sub_21E1D6DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D2864(uint64_t a1)
{
  v2 = sub_21E1D6DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void WFAskLLMPrompt.encode(to:)()
{
  OUTLINED_FUNCTION_30_1();
  v33 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8440);
  OUTLINED_FUNCTION_5();
  v28 = v6;
  v29 = v5;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8448);
  OUTLINED_FUNCTION_5();
  v30 = v11;
  v31 = v10;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8450);
  OUTLINED_FUNCTION_5();
  v34 = v14;
  v35 = v13;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_34_1();
  v32 = *v0;
  v16 = *(v0 + 16);
  OUTLINED_FUNCTION_58(v4, v4[3]);
  sub_21E1D6D18();
  sub_21E344060();
  if (v16 < 0)
  {
    v24 = v28;
    sub_21E1D6D6C();
    v17 = v35;
    OUTLINED_FUNCTION_66();
    sub_21E343EE0();
    v25 = v33;
    v26 = v29;
    sub_21E343F00();
    if (!v25)
    {
      sub_21E343F10();
    }

    (*(v24 + 8))(v9, v26);
  }

  else
  {
    sub_21E1D6DC0();
    v17 = v35;
    OUTLINED_FUNCTION_66();
    sub_21E343EE0();
    v36 = v32;
    type metadata accessor for WFAskLLMUserPrompt();
    OUTLINED_FUNCTION_3_2();
    sub_21E1D6F0C(v18, v19, v20);
    v21 = v33;
    sub_21E343F40();
    if (!v21)
    {
      sub_21E343F10();
    }

    v22 = OUTLINED_FUNCTION_50();
    v23(v22);
  }

  (*(v34 + 8))(v2, v17);
  OUTLINED_FUNCTION_31_1();
}

void WFAskLLMPrompt.init(from:)()
{
  OUTLINED_FUNCTION_30_1();
  v70 = v0;
  v2 = v1;
  v68 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8470);
  OUTLINED_FUNCTION_5();
  v66 = v5;
  v67 = v4;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8478);
  OUTLINED_FUNCTION_5();
  v65 = v8;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8480);
  OUTLINED_FUNCTION_5();
  v14 = v13;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = v2[3];
  v69 = v2;
  OUTLINED_FUNCTION_58(v2, v18);
  sub_21E1D6D18();
  v19 = v70;
  sub_21E344050();
  if (v19)
  {
    goto LABEL_9;
  }

  v64 = v11;
  v62 = v7;
  v20 = v68;
  v70 = v14;
  OUTLINED_FUNCTION_64();
  v21 = sub_21E343ED0();
  v25 = sub_21E1D66FC(v21, 0);
  if (v23 == v24 >> 1)
  {
LABEL_8:
    v31 = sub_21E343D70();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8368);
    *v33 = &type metadata for WFAskLLMPrompt;
    OUTLINED_FUNCTION_64();
    v34 = sub_21E343E60();
    OUTLINED_FUNCTION_38_0(v34, "Invalid number of keys found, expected one.");
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v17, v12);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
LABEL_10:
    OUTLINED_FUNCTION_31_1();
    return;
  }

  v63 = v12;
  if (v23 < (v24 >> 1))
  {
    LODWORD(v61) = *(v22 + v23);
    v26 = sub_21E1D6E14(v23 + 1, v24 >> 1, v25, v22, v23, v24);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      v60 = v26;
      if (v61)
      {
        sub_21E1D6D6C();
        sub_21E343E50();
        v35 = sub_21E343E80();
        v40 = v39;
        v59 = v35;
        v41 = sub_21E343E90();
        v61 = 0;
        v42 = v63;
        v46 = v41;
        swift_unknownObjectRelease();
        v47 = OUTLINED_FUNCTION_19_1();
        v48(v47);
        v49 = OUTLINED_FUNCTION_16_1();
        v50(v49, v42);
        v51 = v46 & 1 | 0x80;
        v52 = v20;
      }

      else
      {
        sub_21E1D6DC0();
        sub_21E343E50();
        v52 = v20;
        type metadata accessor for WFAskLLMUserPrompt();
        OUTLINED_FUNCTION_3_2();
        sub_21E1D6F0C(v36, v37, v38);
        sub_21E343EC0();
        v43 = v71;
        v44 = sub_21E343E90();
        v61 = 0;
        v45 = v63;
        v53 = v44;
        v59 = v43;
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_50();
        v55(v54);
        v56 = OUTLINED_FUNCTION_16_1();
        v57(v56, v45);
        v51 = 0;
        v40 = v53 & 1;
      }

      *v52 = v59;
      *(v52 + 8) = v40;
      *(v52 + 16) = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      goto LABEL_10;
    }

    v12 = v63;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static WFAskLLMConversation.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  return byte_27CEB8301;
}

uint64_t static WFAskLLMConversation.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_67();
  byte_27CEB8301 = a1;
  return result;
}

uint64_t sub_21E1D3370@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CEB8301;
  return result;
}

uint64_t sub_21E1D33BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CEB8301 = v1;
  return result;
}

uint64_t sub_21E1D3468(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WFAskLLMConversation.init()()
{
  *&v0[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAskLLMConversation();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_21E1D3580()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  if (!*(v2 + 16) || *(v2 + 48) < 0)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
  }
}

void *sub_21E1D35E4()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  if (!*(v2 + 16) || *(v2 + 48) < 0)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  v4 = v3;
  return v3;
}

void sub_21E1D363C()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = 0;
    v5 = (v2 + 48);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      if (v6 < 0 || (v7 = *(v5 - 2), sub_21E1D09A0(), v9 = v8, v10 = OUTLINED_FUNCTION_60(), sub_21E1D6EB4(v10, v11, v6), (v9 & 1) != 0))
      {
        ++v4;
        v5 += 3;
        if (v3 != v4)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_21E1D370C()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = ( + 48);
  OUTLINED_FUNCTION_59();
  do
  {
    v4 = *(v3 - 2);
    if (*v3 < 0)
    {

      v15 = OUTLINED_FUNCTION_20_1();
      v16 = sub_21E1D1184(v15);
      MEMORY[0x223D55250](v16);

      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_43_0();
      v17 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EB4(v17, v18, v19);
    }

    else
    {
      v5 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EC4(v5, v6, v7);
      v8 = v4;
      sub_21E1D0C70();
      MEMORY[0x223D55250]();

      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_43_0();
      v9 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EB4(v9, v10, v11);

      v12 = OUTLINED_FUNCTION_18_1();
      sub_21E1D6EB4(v12, v13, v14);
    }

    v3 += 24;
    --v2;
  }

  while (v2);

  return 0;
}

uint64_t sub_21E1D3880()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_59();
  v4 = v3;
  do
  {
    v6 = *v4;
    v4 += 3;
    v5 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(v3 - 2);
      sub_21E1D1464();
      MEMORY[0x223D55250]();

      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_46_0();

      OUTLINED_FUNCTION_43_0();

      v8 = OUTLINED_FUNCTION_60();
      sub_21E1D6EB4(v8, v9, v5);
    }

    v3 = v4;
    --v2;
  }

  while (v2);

  return 0;
}

uint64_t sub_21E1D398C()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = (v2 + 48);
  v5 = (v2 + 48);
  while (1)
  {
    v6 = *v5;
    v5 += 24;
    if ((v6 & 0x80000000) == 0)
    {
      if (*(*(*(v4 - 2) + OBJC_IVAR____TtC10ContentKit18WFAskLLMUserPrompt_images) + 16))
      {
        break;
      }
    }

    v4 = v5;
    if (!--v3)
    {
      return MEMORY[0x277D84F90];
    }
  }
}

id sub_21E1D3A1C()
{
  v1 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
  OUTLINED_FUNCTION_10_1();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = v2 + 24 * v3 + 32;
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = (v4 - 24);
    v7 = *(v4 - 8);
    v4 -= 24;
    if ((v7 & 0x80000000) == 0)
    {
      v8 = *v6;
      v9 = *v6;
      return v8;
    }
  }

  return 0;
}

void sub_21E1D3A90()
{
  OUTLINED_FUNCTION_30_1();
  v161 = v1;
  v2 = v0;
  v130 = v3;
  v5 = v4;
  v138 = v6;
  v132 = sub_21E342E20();
  OUTLINED_FUNCTION_5();
  v131 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_1();
  v135 = v10 - v9;
  OUTLINED_FUNCTION_15_1();
  v137 = sub_21E343530();
  OUTLINED_FUNCTION_5();
  v136 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8490);
  OUTLINED_FUNCTION_28_0(v16);
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_40();
  v151 = v18;
  OUTLINED_FUNCTION_15_1();
  v150 = sub_21E3435D0();
  OUTLINED_FUNCTION_5();
  v133 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_1();
  v149 = v22 - v21;
  OUTLINED_FUNCTION_15_1();
  v148 = sub_21E343600();
  OUTLINED_FUNCTION_5();
  v152 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_1();
  v27 = v26 - v25;
  v147 = sub_21E343710();
  OUTLINED_FUNCTION_5();
  v145 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_1();
  v146 = v31 - v30;
  OUTLINED_FUNCTION_15_1();
  v155 = sub_21E3436E0();
  OUTLINED_FUNCTION_5();
  v142 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_1();
  v154 = (v35 - v34);
  OUTLINED_FUNCTION_15_1();
  sub_21E343500();
  OUTLINED_FUNCTION_5();
  v157 = v36;
  v158 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_3();
  v153 = v38 - v39;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_32_0();
  v160 = v41;
  OUTLINED_FUNCTION_15_1();
  v141 = sub_21E343610();
  OUTLINED_FUNCTION_5();
  v140 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_3();
  v129 = v44 - v45;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_32_0();
  v139 = v47;
  OUTLINED_FUNCTION_15_1();
  v48 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_0_1();
  v54 = v53 - v52;
  v55 = v5[3];
  v56 = v5[4];
  v143 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v55);
  v57 = (*(v56 + 32))(v55, v56);
  v134 = v27;
  v144 = v15;
  if (v57)
  {
    v58 = sub_21E1D3A1C();
    if (v58)
    {
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84A0);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_21E3522F0;
      *(v60 + 32) = v59;
      *(v60 + 40) = 0;
      *(v60 + 48) = 0;
    }

    else
    {
      sub_21E343100();
      v65 = sub_21E3434C0();
      v66 = sub_21E343B50();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_21E1BD000, v65, v66, "WFAskLLMModelSession unable to get user prompt", v67, 2u);
        OUTLINED_FUNCTION_26_1();
        MEMORY[0x223D57360]();
      }

      (*(v50 + 8))(v54, v48);
      v60 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v61 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v60 = *(v2 + v61);
    v62 = *(v60 + 16);
    if (v62)
    {
      v63 = *(v60 + 24 * v62 + 24);

      if (v63 < 0)
      {
        sub_21E1D4794(1, v60);
        v60 = v64;
      }
    }

    else
    {
    }
  }

  v68 = *(v60 + 16);

  v69 = 0;
  v70 = v60 + 48;
  v156 = MEMORY[0x277D84F90];
  v159 = v60;
LABEL_12:
  v71 = (v70 + 24 * v69);
  while (v68 != v69)
  {
    v72 = *(v60 + 16);
    if (v69 >= v72)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v73 = *(v71 - 2);
    v74 = *(v71 - 1);
    v75 = *v71;
    v76 = v72 - 1;
    if (v75 >= 0)
    {
      v77 = *(v71 - 1);
    }

    else
    {
      v77 = *v71;
    }

    sub_21E1D6EC4(*(v71 - 2), *(v71 - 1), *v71);
    if (v69 == v76 || (v77 & 1) == 0)
    {
      v78 = v156;
      v162 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E1D5A24(0, *(v156 + 16) + 1, 1);
        v78 = v162;
      }

      v80 = *(v78 + 16);
      v79 = *(v78 + 24);
      if (v80 >= v79 >> 1)
      {
        v82 = OUTLINED_FUNCTION_42_0(v79);
        sub_21E1D5A24(v82, v80 + 1, 1);
        v78 = v162;
      }

      *(v78 + 16) = v80 + 1;
      v156 = v78;
      v81 = v78 + 32 * v80;
      *(v81 + 32) = v69;
      *(v81 + 40) = v73;
      *(v81 + 48) = v74;
      *(v81 + 56) = v75;
      ++v69;
      v60 = v159;
      goto LABEL_12;
    }

    sub_21E1D6EB4(v73, v74, v75);
    v71 += 24;
    ++v69;
    v60 = v159;
  }

  v83 = *(v156 + 16);
  if (v83)
  {
    v162 = MEMORY[0x277D84F90];
    sub_21E1D59CC();
    v85 = v156;
    v86 = 0;
    v87 = v162;
    ++v145;
    v88 = (v142 + 8);
    v89 = (v156 + 56);
    while (v86 < *(v85 + 16))
    {
      if (*v89 < 0)
      {
        MEMORY[0x28223BE20](v84);
        *(&v129 - 2) = v92;
        *(&v129 - 1) = v93;
        v94 = v146;
        sub_21E343720();
        OUTLINED_FUNCTION_51();
        sub_21E343700();
        (*v145)(v94, v147);
      }

      else
      {
        MEMORY[0x28223BE20](v84);
        *(&v129 - 2) = v90;
        v91 = v154;
        sub_21E3436F0();
        OUTLINED_FUNCTION_51();
        sub_21E3436D0();
        (*v88)(v91, v155);
      }

      v162 = v87;
      v96 = *(v87 + 16);
      v95 = *(v87 + 24);
      v85 = v156;
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_42_0(v95);
        sub_21E1D59CC();
        v85 = v156;
        v87 = v162;
      }

      ++v86;
      *(v87 + 16) = v96 + 1;
      OUTLINED_FUNCTION_24_1();
      v84 = (*(v98 + 32))(v87 + v97 + *(v98 + 72) * v96, v160);
      v89 += 32;
      if (v83 == v86)
      {

        goto LABEL_37;
      }
    }

    goto LABEL_52;
  }

  v87 = MEMORY[0x277D84F90];
LABEL_37:
  sub_21E1C4248(v143, &v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8498);
  type metadata accessor for WFChatGPTModel();
  if (swift_dynamicCast())
  {

    v99 = *(v87 + 16);
    if (v99)
    {
      v160 = *(v158 + 16);
      OUTLINED_FUNCTION_24_1();
      v101 = v87 + v100;
      v156 = *(v102 + 56);
      LODWORD(v155) = *MEMORY[0x277D42DC8];
      v154 = (v133 + 104);
      v158 = v102;
      v147 = (v102 - 8);
      v146 = v152 + 32;
      v103 = MEMORY[0x277D84F90];
      v104 = v134;
      v105 = v157;
      v106 = v153;
      do
      {
        v160(v106, v101, v105);
        v107 = v149;
        sub_21E3434F0();
        (*v154)(v107, v155, v150);
        v108 = sub_21E3435F0();
        __swift_storeEnumTagSinglePayload(v151, 1, 1, v108);
        v109 = v104;
        sub_21E3435E0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_21E1CDC4C(0, *(v103 + 16) + 1, 1, v103);
        }

        v111 = *(v103 + 16);
        v110 = *(v103 + 24);
        v112 = v157;
        v106 = v153;
        if (v111 >= v110 >> 1)
        {
          v115 = OUTLINED_FUNCTION_42_0(v110);
          v103 = sub_21E1CDC4C(v115, v111 + 1, 1, v103);
          v106 = v153;
        }

        (*v147)(v106, v112);
        *(v103 + 16) = v111 + 1;
        OUTLINED_FUNCTION_24_1();
        v105 = v112;
        v104 = v109;
        (*(v114 + 32))(v103 + v113 + *(v114 + 72) * v111, v109, v148);
        v101 += v156;
        --v99;
      }

      while (v99);
    }

    v121 = v139;
    sub_21E343580();
    (*(v140 + 32))(v138, v121, v141);
  }

  else
  {
    sub_21E343540();
    type metadata accessor for WFAFMDevice3BModel();
    swift_initStackObject();
    v116 = v135;
    v117 = v161;
    sub_21E1E0C74();
    if (v117)
    {
      v119 = OUTLINED_FUNCTION_23_1();
      v120(v119);
    }

    else
    {
      v118 = v129;
      ChatMessagesPrompt.renderAsUserContentPromptVariableBinding(modelBundleQuery:locale:)(v116, v130, v129);
      v122 = OUTLINED_FUNCTION_22_1();
      v123(v122, v132);
      v124 = OUTLINED_FUNCTION_23_1();
      v125(v124);
      v126 = *(v140 + 32);
      v127 = v139;
      v128 = v141;
      v126(v139, v118, v141);
      v126(v138, v127, v128);
    }
  }

  OUTLINED_FUNCTION_31_1();
}

void sub_21E1D4794(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v2 = a2;
  if (a1)
  {
    v32 = 0;
    v4 = 0;
    v35 = *(a2 + 16);
    v5 = a2 + 48;
    v6 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D84F90];
    for (i = a2 + 48; ; v5 = i)
    {
      for (j = (v5 + 24 * v4); ; j += 24)
      {
        if (v35 == v4)
        {

          return;
        }

        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 2);
        v8 = *(j - 1);
        v10 = *j;
        v11 = *(v6 + 16);
        if (v11 >= a1)
        {
          break;
        }

        sub_21E1D6EC4(*(j - 2), *(j - 1), *j);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21E1D5A44(0, v11 + 1, 1);
          v2 = a2;
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21E1D5A44(v12 > 1, v13 + 1, 1);
          v2 = a2;
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 24 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v8;
        *(v14 + 48) = v10;
        ++v4;
      }

      if (v32 >= v11)
      {
        goto LABEL_29;
      }

      v15 = v6 + 24 * v32;
      v17 = *(v15 + 32);
      v16 = *(v15 + 40);
      v18 = *(v15 + 48);
      sub_21E1D6EC4(v9, v8, v10);
      v30 = v18;
      sub_21E1D6EC4(v17, v16, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21E1D5A44(0, *(v33 + 16) + 1, 1);
        v2 = a2;
        v20 = v33;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21E1D5A44(v21 > 1, v22 + 1, 1);
        v2 = a2;
        v20 = v33;
      }

      *(v20 + 16) = v22 + 1;
      v33 = v20;
      v23 = v20 + 24 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v16;
      *(v23 + 48) = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E1DD7B8(v6);
        v6 = v24;
      }

      if (v32 >= *(v6 + 16))
      {
        break;
      }

      ++v4;
      v25 = v6 + 24 * v32;
      v26 = *(v25 + 32);
      v27 = *(v25 + 40);
      *(v25 + 32) = v9;
      *(v25 + 40) = v8;
      v28 = *(v25 + 48);
      *(v25 + 48) = v10;
      sub_21E1D6EB4(v26, v27, v28);
      if ((v32 + 1) < a1)
      {
        v29 = v32 + 1;
      }

      else
      {
        v29 = 0;
      }

      v32 = v29;
    }

    goto LABEL_30;
  }
}

void sub_21E1D4A38()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  sub_21E342A20();
  OUTLINED_FUNCTION_68();
  sub_21E342A10();
  type metadata accessor for WFAskLLMConversation();
  OUTLINED_FUNCTION_14_1();
  sub_21E1D6F0C(v3, v4, v5);
  sub_21E342A00();
  v6 = sub_21E342BC0();
  v7 = sub_21E3437A0();
  [v1 encodeObject:v6 forKey:v7];

  v8 = OUTLINED_FUNCTION_62();
  sub_21E1C99C4(v8, v9);
  OUTLINED_FUNCTION_28_1();
}

void WFAskLLMConversation.init(coder:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_41_0();
  swift_getObjectType();
  v25 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  sub_21E3429C0();
  OUTLINED_FUNCTION_68();
  sub_21E3429B0();
  sub_21E1D67CC();
  OUTLINED_FUNCTION_66();
  v8 = sub_21E343C20();
  if (v8)
  {
    v9 = v8;
    v24 = v0;
    v10 = sub_21E342BF0();
    v12 = v11;
    OUTLINED_FUNCTION_14_1();
    sub_21E1D6F0C(v13, v14, v15);
    sub_21E3429A0();

    sub_21E1C99C4(v10, v12);
    v19 = v27;
    v20 = OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation;
    OUTLINED_FUNCTION_13_1();
    swift_beginAccess();
    v21 = *&v19[v20];

    v22 = v24;
    *&v24[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation] = v21;
    v23 = type metadata accessor for WFAskLLMConversation();
    v26.receiver = v22;
    v26.super_class = v23;
    objc_msgSendSuper2(&v26, sel_init);
  }

  else
  {
    sub_21E343100();
    v16 = sub_21E3434C0();
    v17 = sub_21E343B60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21E1BD000, v16, v17, "Could not decode WFAskLLMConversation from data blob: no result", v18, 2u);
      OUTLINED_FUNCTION_26_1();
      MEMORY[0x223D57360]();
    }

    (*(v3 + 8))(v7, v25);
    type metadata accessor for WFAskLLMConversation();
    swift_deallocPartialClassInstance();
  }

  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_21E1D5160(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E343F80();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E1D51DC()
{
  sub_21E344020();
  MEMORY[0x223D55980](0);
  return sub_21E344040();
}

uint64_t sub_21E1D5240()
{
  sub_21E344020();
  MEMORY[0x223D55980](0);
  return sub_21E344040();
}

uint64_t sub_21E1D5284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E1D5160(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E1D52B0(uint64_t a1)
{
  v2 = sub_21E1D6F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E1D52EC(uint64_t a1)
{
  v2 = sub_21E1D6F54();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_21E1D5340(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21E1D5388()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84C0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v0);
  v1 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_58(v1, v2);
  sub_21E1D6F54();
  sub_21E344060();
  OUTLINED_FUNCTION_13_1();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84D0);
  sub_21E1D6FA8(&qword_27CEB84D8, sub_21E1D7020);
  sub_21E343F40();
  v3 = OUTLINED_FUNCTION_60();
  return v4(v3);
}

void WFAskLLMConversation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_30_1();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84E8);
  OUTLINED_FUNCTION_5();
  v17 = v16;
  OUTLINED_FUNCTION_37();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_58(v14, v14[3]);
  sub_21E1D6F54();
  sub_21E344050();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    type metadata accessor for WFAskLLMConversation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84D0);
    sub_21E1D6FA8(&qword_27CEB84F0, sub_21E1D7074);
    sub_21E343EC0();
    *&v10[OBJC_IVAR____TtC10ContentKit20WFAskLLMConversation_conversation] = a10;
    v19.receiver = v10;
    v19.super_class = type metadata accessor for WFAskLLMConversation();
    objc_msgSendSuper2(&v19, sel_init);
    (*(v17 + 8))(v12, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  OUTLINED_FUNCTION_31_1();
}

void sub_21E1D5740(void *a1@<X8>)
{
  WFAskLLMConversation.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_21E1D5790()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8210);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &qword_27CEB92B0;
  }

  else
  {
    v1 = &unk_27CEB86D0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1);
}

char *sub_21E1D57F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

char *sub_21E1D5838(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

char *sub_21E1D5858(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

void sub_21E1D5894(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_13_0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_65();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_65();

    MEMORY[0x2821FE820](v9);
  }
}

char *sub_21E1D5954(char *a1, int64_t a2, char a3)
{
  result = sub_21E1D5B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5A24(void *a1, int64_t a2, char a3)
{
  result = sub_21E1D5DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5A64(void *a1, int64_t a2, char a3)
{
  result = sub_21E1D6150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5ADC(void *a1, int64_t a2, char a3)
{
  result = sub_21E1D6284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E1D5AFC(char *a1, int64_t a2, char a3)
{
  result = sub_21E1D63BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E1D5B1C(char *a1, int64_t a2, char a3)
{
  result = sub_21E1D64C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E1D5B3C(void *a1, int64_t a2, char a3)
{
  result = sub_21E1D65CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E1D5B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21E1D5790();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_21E1D5C58()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v10)
  {
    OUTLINED_FUNCTION_26_0();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_0();
    }
  }

  else
  {
    v11 = v0;
  }

  v14 = *(v7 + 16);
  if (v11 <= v14)
  {
    v15 = *(v7 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v16 = *(v5(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_18:
  v5(0);
  OUTLINED_FUNCTION_24_1();
  if (v9)
  {
    sub_21E1D5894(v7 + v22, v14, v19 + v22, v3);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_28_1();
}

void *sub_21E1D5DFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB86C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_21E1D5F2C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_26_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB84A0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[24 * v9] <= v13)
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21E1D6030(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_26_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82D8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB86A0);
    swift_arrayInitWithCopy();
  }
}

void *sub_21E1D6150(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB8690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21E1D6284(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB8670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E1D63BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB82E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21E1D64C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21E1D65CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8650);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21E1D66FC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_21E1D6744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E1D67CC()
{
  result = qword_27CEB8398;
  if (!qword_27CEB8398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB8398);
  }

  return result;
}

unint64_t sub_21E1D6810()
{
  result = qword_27CEB83B8;
  if (!qword_27CEB83B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83B8);
  }

  return result;
}

unint64_t sub_21E1D6874()
{
  result = qword_27CEB83C8;
  if (!qword_27CEB83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83C8);
  }

  return result;
}

unint64_t sub_21E1D68C8()
{
  result = qword_27CEB83D8;
  if (!qword_27CEB83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83D0);
    sub_21E1D6F0C(&qword_27CEB83E0, 255, type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83D8);
  }

  return result;
}

unint64_t sub_21E1D6980()
{
  result = qword_27CEB83F0;
  if (!qword_27CEB83F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83E8);
    sub_21E1D6F0C(&qword_27CEB83F8, 255, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB83F0);
  }

  return result;
}

unint64_t sub_21E1D6A38()
{
  result = qword_27CEB8408;
  if (!qword_27CEB8408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8400);
    sub_21E1D6F0C(&qword_27CEB8340, 255, MEMORY[0x277D42DF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8408);
  }

  return result;
}

unint64_t sub_21E1D6AF0()
{
  result = qword_27CEB8418;
  if (!qword_27CEB8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83D0);
    sub_21E1D6F0C(&qword_27CEB8420, 255, type metadata accessor for WFAskLLMUserPrompt.TextPromptComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8418);
  }

  return result;
}

unint64_t sub_21E1D6BA8()
{
  result = qword_27CEB8428;
  if (!qword_27CEB8428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB83E8);
    sub_21E1D6F0C(&qword_27CEB8430, 255, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8428);
  }

  return result;
}

unint64_t sub_21E1D6C60()
{
  result = qword_27CEB8438;
  if (!qword_27CEB8438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEB8400);
    sub_21E1D6F0C(&qword_27CEB8370, 255, MEMORY[0x277D42DF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8438);
  }

  return result;
}

unint64_t sub_21E1D6D18()
{
  result = qword_27CEB8458;
  if (!qword_27CEB8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8458);
  }

  return result;
}

unint64_t sub_21E1D6D6C()
{
  result = qword_27CEB8460;
  if (!qword_27CEB8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8460);
  }

  return result;
}

unint64_t sub_21E1D6DC0()
{
  result = qword_27CEB8468;
  if (!qword_27CEB8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB8468);
  }

  return result;
}

uint64_t sub_21E1D6E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_21E1D6EB4(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

id sub_21E1D6EC4(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_21E1D6F0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E1D6F54()
{
  result = qword_27CEB84C8;
  if (!qword_27CEB84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB84C8);
  }

  return result;
}