uint64_t type metadata accessor for CommandExecutor()
{
  result = qword_27EDC8F80;
  if (!qword_27EDC8F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243FA0AAC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243F5F610;

  return sub_243F9F070(a1, v5, v6, v4);
}

uint64_t sub_243FA0B4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_243F5DE2C;

  return sub_243F9F54C(v5, a2, v2);
}

uint64_t sub_243FA0BE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_243F5F610;

  return sub_243FA0220(v5, a2, v2);
}

uint64_t sub_243FA0C84()
{
  result = sub_2440D0930();
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

uint64_t sub_243FA0DFC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243FA045C(v3, v4, v5, v2);
}

uint64_t sub_243FA0E90()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243FA065C(v3, v4, v5, v2);
}

uint64_t sub_243FA0F24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5DE2C;

  return sub_243F5CC44(a1, v4);
}

uint64_t sub_243FA0FDC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F9F788(v3, v4, v5, v2);
}

uint64_t sub_243FA1070()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F9FA6C(v3, v4, v5, v2);
}

uint64_t sub_243FA1104()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F9E60C(v3, v4, v5, v2);
}

unint64_t sub_243FA1198(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1768);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_243FA1284(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_243FA090C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_243FA1198(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_243FA1344(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_243FA13D4()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F9C0C8(v3, v4, v5, v0 + 32, v2);
}

uint64_t sub_243FA14A8()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_2440D3B20();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x245D57A30](2);
      MEMORY[0x245D57A30](v1);
    }

    else
    {
      MEMORY[0x245D57A30](3);
      MEMORY[0x245D57A30](v1);
      sub_2440D3B40();
    }
  }

  else if (v2)
  {
    MEMORY[0x245D57A30](1);
    sub_2440D30B0();
  }

  else
  {
    MEMORY[0x245D57A30](0);
    sub_2440D35D0();
  }

  return sub_2440D3B50();
}

uint64_t sub_243FA1580()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      MEMORY[0x245D57A30](2);
      return MEMORY[0x245D57A30](v1);
    }

    else
    {
      MEMORY[0x245D57A30](3);
      MEMORY[0x245D57A30](v1);
      return sub_2440D3B40();
    }
  }

  else if (*(v0 + 16))
  {
    MEMORY[0x245D57A30](1);

    return sub_2440D30B0();
  }

  else
  {
    MEMORY[0x245D57A30](0);
    return sub_2440D35D0();
  }
}

uint64_t sub_243FA1640()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_2440D3B20();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x245D57A30](2);
      MEMORY[0x245D57A30](v1);
    }

    else
    {
      MEMORY[0x245D57A30](3);
      MEMORY[0x245D57A30](v1);
      sub_2440D3B40();
    }
  }

  else if (v2)
  {
    MEMORY[0x245D57A30](1);
    sub_2440D30B0();
  }

  else
  {
    MEMORY[0x245D57A30](0);
    sub_2440D35D0();
  }

  return sub_2440D3B50();
}

uint64_t sub_243FA1730(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    v9 = a6 == 2 && a1 == a4;
    v10 = a5 ^ a2 ^ 1;
    if (a1 != a4)
    {
      v10 = 0;
    }

    if (a6 == 3)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (a3 == 2)
    {
      return v9;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    if (!a3)
    {
      if (!a6)
      {
        sub_243FA192C();
        return sub_2440D35C0() & 1;
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {

      return sub_2440D3A10();
    }
  }
}

unint64_t sub_243FA1814()
{
  result = qword_27EDC1778;
  if (!qword_27EDC1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1778);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_243FA1888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_243FA18D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_243FA192C()
{
  result = qword_27EDC1780;
  if (!qword_27EDC1780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC1780);
  }

  return result;
}

uint64_t sub_243FA1988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_243FA19FC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  *a1 = v3;
  return result;
}

uint64_t sub_243FA1A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_243FA1BCC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  *a1 = v3;
  return result;
}

uint64_t sub_243FA1C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_243FA1CCC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_243FA1D1C(a1, a2);
  return v4;
}

uint64_t sub_243FA1D1C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1788);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-v11];
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__screenState;
  v22[15] = 0;
  sub_2440D1300();
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__showTermsAndConditions;
  v22[14] = 0;
  sub_2440D1300();
  v15 = *(v6 + 32);
  v15(v2 + v14, v8, v5);
  v16 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__disableCancel;
  v22[13] = 0;
  sub_2440D1300();
  v15(v2 + v16, v8, v5);
  v17 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__dismissUI;
  v22[12] = 0;
  sub_2440D1300();
  v15(v2 + v17, v8, v5);
  v18 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__showRegistrationFailedAlert;
  v22[11] = 0;
  sub_2440D1300();
  v15(v2 + v18, v8, v5);
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_remoteProxy) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_connection) = 0;
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_registrationDelayedExecution) = 0;
  v19 = (v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_dismissalHandler);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_termsAndConditionsAcceptanceRequired);
  *v20 = a1;
  v20[1] = a2;
  return v2;
}

uint64_t sub_243FA1FC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_243F4E22C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3460();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "IdentityRegistrationViewModel deinit", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__screenState;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1788);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__showTermsAndConditions;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v15 = *(*(v14 - 8) + 8);
  v15(v1 + v13, v14);
  v15(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__disableCancel, v14);
  v15(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__dismissUI, v14);
  v15(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel__showRegistrationFailedAlert, v14);
  swift_unknownObjectRelease();

  sub_243F7EE58(*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_dismissalHandler));

  return v1;
}

uint64_t sub_243FA2294()
{
  sub_243FA1FC8();

  return swift_deallocClassInstance();
}

uint64_t sub_243FA22EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

void sub_243FA2360(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_243F4E22C();
  sub_243F4DE64(v7, v6);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5FAB0(v6);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v2, 0xD00000000000002CLL, 0x80000002440EA3B0, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  [v13 setExportedObject_];
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  [v13 setExportedInterface_];

  v16 = [v14 interfaceWithProtocol_];
  [v13 setRemoteObjectInterface_];

  aBlock[4] = sub_243FA268C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243FA2898;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);
  v18 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_2440D36C0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1790);
  v19 = swift_dynamicCast();
  v20 = v22[1];
  if (!v19)
  {
    v20 = 0;
  }

  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_remoteProxy) = v20;
  swift_unknownObjectRelease();
  [v13 resume];
  v21 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_connection);
  *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_connection) = v13;
}

uint64_t sub_243FA268C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_243F4E22C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_243F5FAB0(v4);
  }

  v9 = a1;
  v10 = sub_2440D11C0();
  v11 = sub_2440D3460();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_2440D3AB0();
    v16 = sub_243F4E6F8(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_243F48000, v10, v11, "IdentityRegistrationUIDelegate connection invalidated with error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x245D58570](v13, -1, -1);
    MEMORY[0x245D58570](v12, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

void sub_243FA2898(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_243FA2914(char a1)
{
  v3 = sub_2440D2CD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2440D2C80();
  MEMORY[0x28223BE20](v7);
  v13 = v1;
  if (a1)
  {
    v14 = 1;
    sub_2440D2BA0();
    sub_2440D16E0();

    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_243FA386C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F5F604;
    aBlock[3] = &block_descriptor_28;
    _Block_copy(aBlock);
    v15 = MEMORY[0x277D84F90];
    sub_243F91D78();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    sub_243F73DE0();
    sub_2440D3710();
    sub_2440D2D00();
    swift_allocObject();
    v9 = sub_2440D2CE0();

    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_registrationDelayedExecution) = v9;

    sub_243F5DB84();
    v10 = sub_2440D3530();
    sub_244071484();
    sub_2440D3510();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v14 = 0;
    sub_2440D2BA0();
    sub_2440D16E0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  return sub_2440D1350();
}

uint64_t sub_243FA2C84(char a1, uint64_t a2)
{
  v4 = sub_2440D2C80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2CA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243F5DB84();
  v12 = sub_2440D3530();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_243FA3D2C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_47;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57440](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_243FA2F14(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *&v13[-16] = MEMORY[0x28223BE20](result);
      v13[-8] = 2;
      sub_2440D2BA0();
      sub_2440D16E0();
    }
  }

  else
  {
    v6 = sub_243F4E22C();
    sub_243F4DE64(v6, v4);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_243F5FAB0(v4);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3470();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "Could not complete registration", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      (*(v8 + 8))(v4, v7);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *&v13[-16] = MEMORY[0x28223BE20](Strong);
      v13[-8] = 0;
      sub_2440D2BA0();
      sub_2440D16E0();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13[16] = 1;
      sub_2440D1350();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13[15] = 0;
      return sub_2440D1350();
    }
  }

  return result;
}

uint64_t sub_243FA328C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_243FA32E0()
{
  if (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_registrationDelayedExecution))
  {
    *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_registrationDelayedExecution) = 0;
    sub_2440D2CF0();
  }

  result = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_remoteProxy);
  if (result)
  {

    return [result cancelRegistration];
  }

  return result;
}

id sub_243FA3354()
{
  result = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_remoteProxy);
  if (result)
  {
    return [result uiDidLoad];
  }

  return result;
}

uint64_t sub_243FA3374(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_dismissalHandler);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {

    v4(a1 & 1);
    sub_243F7EE58(v4);
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  return sub_243F7EE58(v5);
}

uint64_t sub_243FA3408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

uint64_t sub_243FA3458()
{
  v1 = sub_2440D2C80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243FA32E0();
  sub_243F5DB84();
  v9 = sub_2440D3530();
  aBlock[4] = sub_243FA3A58;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_31;
  v10 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F91D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57440](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_243FA370C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_dismissalHandler);
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {

    v3(0);
    sub_243F7EE58(v3);
    v4 = *v2;
    *v2 = 0;
    v2[1] = 0;
    sub_243F7EE58(v4);
  }

  v5 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_remoteProxy);
  if (v5)
  {
    [v5 uiFinishedWithExpected_];
  }

  v6 = OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_connection;
  v7 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_connection);
  if (v7)
  {
    [v7 setExportedObject_];
    v8 = *(v1 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v6) = 0;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243FA3834()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_243FA386C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_registrationDelayedExecution) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v5[0]) = 1;
    sub_2440D1350();
  }

  swift_beginAccess();
  v1 = swift_weakLoadStrong();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI29IdentityRegistrationViewModel_remoteProxy);
    if (v2)
    {
      swift_unknownObjectRetain();

      v3 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v5[4] = sub_243FA3CEC;
      v5[5] = v3;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 1107296256;
      v5[2] = sub_243FA328C;
      v5[3] = &block_descriptor_41;
      v4 = _Block_copy(v5);

      [v2 registerWithCompletion_];
      swift_unknownObjectRelease();
      _Block_release(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_243FA3A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

unint64_t sub_243FA3AD8()
{
  result = qword_27EDC1798;
  if (!qword_27EDC1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1798);
  }

  return result;
}

uint64_t type metadata accessor for IdentityRegistrationViewModel()
{
  result = qword_27EDC92A0;
  if (!qword_27EDC92A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243FA3B80()
{
  sub_243FA3C90(319, &qword_27EDC17A0);
  if (v0 <= 0x3F)
  {
    sub_243FA3C90(319, &qword_27EDBFF90);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243FA3C90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2440D1360();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_243FA3CF4()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for IdentityTermsAndConditions()
{
  result = qword_27EDC9430;
  if (!qword_27EDC9430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243FA3DBC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = type metadata accessor for IdentityTermsAndConditions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_243FA6A18(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_243FA8478(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for IdentityTermsAndConditions);
  *a2 = sub_243FA7364;
  a2[1] = v8;
  return result;
}

uint64_t sub_243FA3ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v90 = a1;
  v91 = a3;
  v89 = sub_2440D18A0();
  v87 = *(v89 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityTermsAndConditions();
  v6 = *(v5 - 8);
  v78 = v5 - 8;
  v84 = v6;
  v82 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v70 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1800);
  v10 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v70 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1808);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1810);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1818);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v70 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1820);
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v92 = &v70 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1828);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v75 = &v70 - v22;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1830);
  MEMORY[0x28223BE20](v77);
  v76 = &v70 - v23;
  sub_2440D2090();
  v95 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1838);
  sub_243F5DD50(&qword_27EDC1840, &qword_27EDC1838);
  sub_2440D13E0();
  sub_2440D2AE0();
  sub_2440D18E0();
  (*(v10 + 32))(v16, v12, v71);
  v24 = &v16[*(v14 + 44)];
  v25 = v105;
  *(v24 + 4) = v104;
  *(v24 + 5) = v25;
  *(v24 + 6) = v106;
  v26 = v101;
  *v24 = v100;
  *(v24 + 1) = v26;
  v27 = v103;
  *(v24 + 2) = v102;
  *(v24 + 3) = v27;
  v28 = sub_2440D20A0();
  sub_244070F28();
  swift_beginAccess();
  sub_2440D13D0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_243FA73EC(v16, v19);
  v37 = &v19[*(v17 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = v70;
  v94 = v70;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1848);
  v40 = sub_243FA7464();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1868);
  v42 = sub_243F5DD50(&qword_27EDC1870, &qword_27EDC1868);
  v96 = v41;
  v97 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v72;
  sub_2440D25B0();
  sub_243F5EED4(v19, &qword_27EDC1810);
  sub_2440D1C30();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1878);
  v96 = v17;
  v97 = v39;
  v98 = v40;
  v99 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1880);
  v47 = sub_243FA8064(&qword_27EDC1888, &qword_27EDC1880, &unk_2440D9DF0, sub_243FA75A8);
  v96 = v46;
  v97 = v47;
  v69 = swift_getOpaqueTypeConformance2();
  v48 = v73;
  sub_2440D23B0();
  (*(v74 + 8))(v44, v48);
  v78 = *(v78 + 36);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
  v49 = v38;
  sub_2440D2840();
  v50 = v38;
  v51 = v80;
  sub_243FA6A18(v50, v80);
  v52 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v53 = swift_allocObject();
  sub_243FA8478(v51, v53 + v52, type metadata accessor for IdentityTermsAndConditions);
  sub_243FA6A18(v49, v51);
  v54 = swift_allocObject();
  sub_243FA8478(v51, v54 + v52, type metadata accessor for IdentityTermsAndConditions);
  type metadata accessor for WebContent();
  type metadata accessor for SafariWebView();
  v96 = v48;
  v97 = v71;
  v98 = v45;
  v99 = v69;
  swift_getOpaqueTypeConformance2();
  sub_243FA859C(&qword_27EDC18F0, type metadata accessor for WebContent);
  sub_243FA859C(&qword_27EDC18F8, type metadata accessor for SafariWebView);
  v55 = v75;
  v56 = v93;
  v57 = v79;
  v58 = v92;
  sub_2440D2570();

  sub_243F5EED4(v56, &qword_27EDC17F8);
  (*(v81 + 8))(v58, v57);
  v59 = sub_2440D2BA0();
  v60 = v76;
  v61 = &v76[*(v77 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1900);
  sub_2440D2820();
  *v61 = v59;
  (*(v83 + 32))(v60, v55, v85);
  v62 = *(v49 + 40);
  v96 = *(v49 + 32);
  v97 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v63 = v87;
  v64 = v86;
  v65 = v89;
  (*(v87 + 16))(v86, v90, v89);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v66, v64, v65);
  sub_243FA7D24();
  sub_2440D25E0();

  return sub_243F5EED4(v60, &qword_27EDC1830);
}

uint64_t sub_243FA4BF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = sub_2440D1BC0();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17F8);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v42 - v5;
  v6 = type metadata accessor for HTMLView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1978);
  MEMORY[0x28223BE20](v45);
  v43 = &v42 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1980);
  v10 = MEMORY[0x28223BE20](v46);
  v54 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v50 = &v42 - v14;
  v52 = sub_2440D2690();
  sub_2440D2B00();
  sub_2440D1560();
  v57 = v76;
  v49 = v80;
  v47 = v78;
  v48 = v81;
  v58 = v77;
  v59 = v79;
  LOBYTE(v82) = v77;
  LOBYTE(v65) = v79;
  v15 = a1[2];
  v16 = a1[3];
  v18 = a1[5];
  v65 = a1[4];
  v17 = v65;
  v66 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2840();
  v19 = v82;
  v20 = *&v83;
  type metadata accessor for IdentityTermsAndConditions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
  v21 = v8;
  v22 = v42;
  sub_2440D2840();
  sub_244073A34(v15, v16, 1, v19, *(&v19 + 1), v22, v21, v20);
  *&v82 = v17;
  *(&v82 + 1) = v18;
  sub_2440D2820();
  sub_2440D2B10();
  sub_2440D18E0();
  v23 = v21;
  v24 = v43;
  sub_243FA8478(v23, v43, type metadata accessor for HTMLView);
  v25 = (v24 + *(v45 + 36));
  v26 = v87;
  v25[4] = v86;
  v25[5] = v26;
  v25[6] = v88;
  v27 = v83;
  *v25 = v82;
  v25[1] = v27;
  v28 = v85;
  v25[2] = v84;
  v25[3] = v28;
  v29 = v51;
  sub_2440D1BA0();
  sub_243FA84E0();
  v30 = v44;
  sub_2440D24C0();
  (*(v53 + 8))(v29, v55);
  sub_243F5EED4(v24, &qword_27EDC1978);
  v31 = v50;
  sub_2440D1800();
  sub_243F5EED4(v30, &qword_27EDC1980);
  v32 = v54;
  sub_243F5F574(v31, v54, &qword_27EDC1980);
  v33 = v52;
  *&v60 = v52;
  *(&v60 + 1) = v57;
  LOBYTE(v61) = v58;
  *(&v61 + 1) = v90[0];
  DWORD1(v61) = *(v90 + 3);
  v34 = v47;
  v35 = v48;
  *(&v61 + 1) = v47;
  LOBYTE(v62) = v59;
  *(&v62 + 1) = *v89;
  DWORD1(v62) = *&v89[3];
  v36 = v49;
  *(&v62 + 1) = v49;
  *&v63 = v48;
  *(&v63 + 1) = 7368564;
  v64 = 0xE300000000000000;
  v37 = v56;
  *(v56 + 64) = 0xE300000000000000;
  v38 = v61;
  *v37 = v60;
  v37[1] = v38;
  v39 = v63;
  v37[2] = v62;
  v37[3] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1998);
  sub_243F5F574(v32, v37 + *(v40 + 48), &qword_27EDC1980);
  sub_243F5F574(&v60, &v65, &qword_27EDC19A0);
  sub_243F5EED4(v31, &qword_27EDC1980);
  sub_243F5EED4(v32, &qword_27EDC1980);
  v65 = v33;
  v66 = v57;
  v67 = v58;
  *v68 = v90[0];
  *&v68[3] = *(v90 + 3);
  v69 = v34;
  v70 = v59;
  *v71 = *v89;
  *&v71[3] = *&v89[3];
  v72 = v36;
  v73 = v35;
  v74 = 7368564;
  v75 = 0xE300000000000000;
  return sub_243F5EED4(&v65, &qword_27EDC19A0);
}

uint64_t sub_243FA529C(uint64_t a1)
{
  v2 = sub_2440D1DC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1868);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2440D1DB0();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1920);
  sub_243F5DD50(&qword_27EDC1928, &qword_27EDC1920);
  sub_2440D18D0();
  v7 = sub_243F5DD50(&qword_27EDC1870, &qword_27EDC1868);
  MEMORY[0x245D55CE0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_243FA5488@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1930);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - v6;
  v7 = type metadata accessor for IdentityTermsAndConditions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1938);
  v44 = *(v37 - 8);
  v11 = MEMORY[0x28223BE20](v37);
  v42 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  sub_243FA6A18(a1, v10);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = v15 + v9;
  v17 = swift_allocObject();
  sub_243FA8478(v10, v17 + v15, type metadata accessor for IdentityTermsAndConditions);
  *(v17 + v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1940);
  sub_243FA8064(&qword_27EDC1948, &qword_27EDC1940, &unk_2440D9F00, sub_243FA8118);
  v35 = v14;
  sub_2440D2870();
  sub_243FA6A18(v36, v10);
  v18 = swift_allocObject();
  sub_243FA8478(v10, v18 + v15, type metadata accessor for IdentityTermsAndConditions);
  *(v18 + v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1950);
  sub_243FA8064(&qword_27EDC1958, &qword_27EDC1950, &unk_2440D9F10, sub_243FA83C0);
  v19 = v43;
  sub_2440D2870();
  v20 = *(v44 + 16);
  v21 = v42;
  v22 = v14;
  v23 = v37;
  v20(v42, v22, v37);
  v24 = v38;
  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v19;
  v28 = v40;
  v26(v38, v27, v40);
  v29 = v41;
  v20(v41, v21, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1970);
  v31 = &v29[*(v30 + 48)];
  *v31 = 0;
  v31[8] = 1;
  v26(&v29[*(v30 + 64)], v24, v28);
  v32 = *(v25 + 8);
  v32(v43, v28);
  v33 = *(v44 + 8);
  v33(v35, v23);
  v32(v24, v28);
  return (v33)(v42, v23);
}

uint64_t sub_243FA595C()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4();
  v2 = v1;
  v4 = v3;
  sub_243FFB0DC();

  v5 = sub_2440D22C0();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_243F62C68(v0, v2, v4 & 1);

  *&v13 = v5;
  *(&v13 + 1) = v7;
  LOBYTE(v14) = v9 & 1;
  *(&v14 + 1) = v11;
  v15[0] = sub_2440D20B0();
  memset(&v15[8], 0, 32);
  v15[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E10);
  sub_243FA8118();
  sub_2440D24E0();
  v16[2] = *v15;
  v17[0] = *&v15[16];
  *(v17 + 9) = *&v15[25];
  v16[0] = v13;
  v16[1] = v14;
  return sub_243F5EED4(v16, &qword_27EDC0E10);
}

uint64_t sub_243FA5B00()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4();
  v2 = v1;
  v4 = v3;
  sub_2440D2230();
  v5 = sub_2440D22E0();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_243F62C68(v0, v2, v4 & 1);

  LOBYTE(v0) = sub_2440D20B0();
  LOBYTE(v18[0]) = v9 & 1;
  v12 = *sub_243FFB0DC();
  *&v14 = v5;
  *(&v14 + 1) = v7;
  LOBYTE(v15) = v9 & 1;
  *(&v15 + 1) = v11;
  v16[0] = v0;
  memset(&v16[8], 0, 32);
  v16[40] = 1;
  *&v17 = swift_getKeyPath();
  *(&v17 + 1) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1968);
  sub_243FA83C0();
  sub_2440D24E0();
  v18[2] = *v16;
  v18[3] = *&v16[16];
  v18[4] = *&v16[32];
  v18[5] = v17;
  v18[0] = v14;
  v18[1] = v15;
  return sub_243F5EED4(v18, &qword_27EDC1968);
}

uint64_t sub_243FA5CC4@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v96 = sub_2440D1BE0();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v81);
  v97 = &v80 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1918);
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v80 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC18B8);
  MEMORY[0x28223BE20](v82);
  v85 = &v80 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC18A8);
  MEMORY[0x28223BE20](v84);
  v88 = &v80 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1898);
  MEMORY[0x28223BE20](v89);
  v90 = &v80 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1880);
  MEMORY[0x28223BE20](v91);
  v92 = &v80 - v8;
  sub_24401FBC0();
  v9 = sub_24401FBD4();
  v11 = v10;
  v13 = v12;
  sub_2440D2180();
  v14 = sub_2440D22A0();
  v16 = v15;
  v18 = v17;
  sub_243F62C68(v9, v11, v13 & 1);

  sub_2440D2160();
  v19 = sub_2440D22E0();
  v21 = v20;
  v23 = v22;

  sub_243F62C68(v14, v16, v18 & 1);

  sub_243FFAE40();

  v24 = sub_2440D22C0();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_243F62C68(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  sub_2440D2B10();
  sub_2440D18E0();
  *&v106[55] = v112;
  *&v106[71] = v113;
  *&v106[87] = v114;
  *&v106[103] = v115;
  *&v106[7] = v109;
  *&v106[23] = v110;
  v107 = v28 & 1;
  *&v106[39] = v111;
  v32 = swift_getKeyPath();
  v108 = 0;
  v33 = swift_getKeyPath();
  *(&v100[4] + 9) = *&v106[64];
  *(&v100[5] + 9) = *&v106[80];
  *(&v100[6] + 9) = *&v106[96];
  *(v100 + 9) = *v106;
  *(&v100[1] + 9) = *&v106[16];
  *(&v100[2] + 9) = *&v106[32];
  *&v98 = v24;
  *(&v98 + 1) = v26;
  LOBYTE(v99) = v28 & 1;
  *(&v99 + 1) = v30;
  *&v100[0] = KeyPath;
  BYTE8(v100[0]) = 0;
  *(&v100[3] + 9) = *&v106[48];
  *(&v100[7] + 1) = *&v106[111];
  *&v101 = v32;
  *(&v101 + 1) = 3;
  LOBYTE(v102) = 0;
  *(&v102 + 1) = v33;
  v103 = 0x3FE0000000000000;
  v34 = *MEMORY[0x277CDF988];
  v35 = sub_2440D1770();
  v36 = v97;
  (*(*(v35 - 8) + 104))(v97, v34, v35);
  sub_243FA859C(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  result = sub_2440D2F50();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC18C0);
    sub_243FA77E8();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v38 = v83;
    sub_2440D2420();
    sub_243F5EED4(v36, &qword_27EDC0010);
    v104[10] = v101;
    v104[11] = v102;
    v105 = v103;
    v104[6] = v100[4];
    v104[7] = v100[5];
    v104[8] = v100[6];
    v104[9] = v100[7];
    v104[2] = v100[0];
    v104[3] = v100[1];
    v104[4] = v100[2];
    v104[5] = v100[3];
    v104[0] = v98;
    v104[1] = v99;
    sub_243F5EED4(v104, &qword_27EDC18C0);
    v39 = sub_2440D20A0();
    sub_244070F28();
    swift_beginAccess();
    sub_2440D13D0();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = v85;
    (*(v86 + 32))(v85, v38, v87);
    v49 = &v48[*(v82 + 36)];
    *v49 = v39;
    *(v49 + 1) = v41;
    *(v49 + 2) = v43;
    *(v49 + 3) = v45;
    *(v49 + 4) = v47;
    v49[40] = 0;
    v50 = sub_2440D20C0();
    sub_244070E5C();
    sub_2440D13D0();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v48;
    v60 = v88;
    sub_243F681C8(v59, v88, &qword_27EDC18B8);
    v61 = v60 + *(v84 + 36);
    *v61 = v50;
    *(v61 + 8) = v52;
    *(v61 + 16) = v54;
    *(v61 + 24) = v56;
    *(v61 + 32) = v58;
    *(v61 + 40) = 0;
    v62 = sub_2440D20D0();
    sub_244070EC4();
    sub_2440D13D0();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = v90;
    sub_243F681C8(v60, v90, &qword_27EDC18A8);
    v72 = v71 + *(v89 + 36);
    *v72 = v62;
    *(v72 + 8) = v64;
    *(v72 + 16) = v66;
    *(v72 + 24) = v68;
    *(v72 + 32) = v70;
    *(v72 + 40) = 0;
    sub_24401FBC0();
    v73 = sub_24401FBD4();
    v75 = v74;
    v77 = v76;
    sub_243FA75A8();
    v78 = v92;
    sub_2440D2430();
    sub_243F62C68(v73, v75, v77 & 1);

    sub_243F5EED4(v71, &qword_27EDC1898);
    v79 = v93;
    sub_2440D1BD0();
    sub_243FA8064(&qword_27EDC1888, &qword_27EDC1880, &unk_2440D9DF0, sub_243FA75A8);
    sub_2440D2470();
    (*(v94 + 8))(v79, v96);
    return sub_243F5EED4(v78, &qword_27EDC1880);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243FA6614()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for WebContent();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for IdentityTermsAndConditions();
  sub_243F5F574(v5, v3, &qword_27EDC53C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
  sub_2440D2830();
  return sub_243F5EED4(v5, &qword_27EDC53C0);
}

uint64_t sub_243FA6754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2440D05F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebContent();
  (*(v5 + 16))(v7, a1 + *(v8 + 20), v4);
  return sub_2440301A8(v7, a2);
}

uint64_t sub_243FA6838()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_243F4DFA8();
  sub_243F5F574(v3, v2, &qword_27EDC0A50);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_243F5EED4(v2, &qword_27EDC0A50);
  }

  else
  {
    v6 = sub_2440D11C0();
    v7 = sub_2440D3460();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243F48000, v6, v7, "TOS content changed, scrolling to top", v8, 2u);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  v10[0] = 7368564;
  v10[1] = 0xE300000000000000;
  sub_2440D2C20();
  return sub_2440D1890();
}

uint64_t sub_243FA6A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityTermsAndConditions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FA6A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  *&v19[1] = a7;
  sub_2440D2810();
  v17 = v19[3];
  a6[4] = v19[2];
  a6[5] = v17;
  type metadata accessor for IdentityTermsAndConditions();
  sub_243F5F574(a5, v16, &qword_27EDC53C0);
  sub_2440D2810();
  return sub_243F5EED4(a5, &qword_27EDC53C0);
}

uint64_t sub_243FA6BC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17B0);
  sub_243F5DD50(&qword_27EDC17B8, &qword_27EDC17B0);
  return sub_2440D1820();
}

uint64_t sub_243FA6C6C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC53C0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = type metadata accessor for WebContent();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  *a1 = nullsub_1;
  a1[1] = 0;
  a1[2] = 0xD000000000000012;
  a1[3] = 0x80000002440EA560;
  v11[1] = 0x408F400000000000;
  sub_2440D2810();
  v9 = v11[3];
  a1[4] = v11[2];
  a1[5] = v9;
  type metadata accessor for IdentityTermsAndConditions();
  sub_243F5F574(v7, v5, &qword_27EDC53C0);
  sub_2440D2810();
  return sub_243F5EED4(v7, &qword_27EDC53C0);
}

unint64_t sub_243FA6E2C()
{
  result = qword_27EDC17C0;
  if (!qword_27EDC17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC17C0);
  }

  return result;
}

uint64_t sub_243FA6EA0(uint64_t a1)
{
  v2 = sub_243FA7310();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FA6EEC(uint64_t a1)
{
  v2 = sub_243FA7310();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243FA6F4C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_243FA701C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243FA70CC()
{
  sub_243FA7170();
  if (v0 <= 0x3F)
  {
    sub_243FA71C0();
    if (v1 <= 0x3F)
    {
      sub_243FA7210();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_243FA7170()
{
  result = qword_27EDC17C8;
  if (!qword_27EDC17C8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EDC17C8);
  }

  return result;
}

void sub_243FA71C0()
{
  if (!qword_27EDC0278)
  {
    v0 = sub_2440D2850();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0278);
    }
  }
}

void sub_243FA7210()
{
  if (!qword_27EDC17D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC53C0);
    v0 = sub_2440D2850();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC17D0);
    }
  }
}

unint64_t sub_243FA7310()
{
  result = qword_27EDC17F0;
  if (!qword_27EDC17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC17F0);
  }

  return result;
}

uint64_t sub_243FA7364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for IdentityTermsAndConditions() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243FA3ED0(a1, v6, a2);
}

uint64_t sub_243FA73EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_243FA7464()
{
  result = qword_27EDC1850;
  if (!qword_27EDC1850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1810);
    sub_243FA74F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1850);
  }

  return result;
}

unint64_t sub_243FA74F0()
{
  result = qword_27EDC1858;
  if (!qword_27EDC1858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1808);
    sub_243F5DD50(&qword_27EDC1860, &qword_27EDC1800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1858);
  }

  return result;
}

unint64_t sub_243FA75A8()
{
  result = qword_27EDC1890;
  if (!qword_27EDC1890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1898);
    sub_243FA7634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1890);
  }

  return result;
}

unint64_t sub_243FA7634()
{
  result = qword_27EDC18A0;
  if (!qword_27EDC18A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC18A8);
    sub_243FA76C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC18A0);
  }

  return result;
}

unint64_t sub_243FA76C0()
{
  result = qword_27EDC18B0;
  if (!qword_27EDC18B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC18B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC18C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_243FA77E8();
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC18B0);
  }

  return result;
}

unint64_t sub_243FA77E8()
{
  result = qword_27EDC18C8;
  if (!qword_27EDC18C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC18C0);
    sub_243FA78A0();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC18C8);
  }

  return result;
}

unint64_t sub_243FA78A0()
{
  result = qword_27EDC18D0;
  if (!qword_27EDC18D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC18D8);
    sub_243FA7958();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC18D0);
  }

  return result;
}

unint64_t sub_243FA7958()
{
  result = qword_27EDC18E0;
  if (!qword_27EDC18E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC18E8);
    sub_243F8E078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC18E0);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for IdentityTermsAndConditions() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for WebContent();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_2440D0700();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_2440D05F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);

  return swift_deallocObject();
}

uint64_t sub_243FA7BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for IdentityTermsAndConditions();

  return sub_243FA6754(a1, a2);
}

uint64_t sub_243FA7BF4()
{
  v1 = sub_2440D18A0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_243FA7CA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_243FA7D24()
{
  result = qword_27EDC1908;
  if (!qword_27EDC1908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1820);
    type metadata accessor for WebContent();
    type metadata accessor for SafariWebView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1848);
    sub_243FA7464();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1868);
    sub_243F5DD50(&qword_27EDC1870, &qword_27EDC1868);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1880);
    sub_243FA8064(&qword_27EDC1888, &qword_27EDC1880, &unk_2440D9DF0, sub_243FA75A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243FA859C(&qword_27EDC18F0, type metadata accessor for WebContent);
    sub_243FA859C(&qword_27EDC18F8, type metadata accessor for SafariWebView);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC1910, &qword_27EDC1900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1908);
  }

  return result;
}

uint64_t sub_243FA8064(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243FA859C(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243FA8118()
{
  result = qword_27EDC0E08;
  if (!qword_27EDC0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0E08);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for IdentityTermsAndConditions() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for WebContent();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_2440D0700();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_2440D05F0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC17A8);

  return swift_deallocObject();
}

uint64_t sub_243FA833C()
{
  v1 = *(type metadata accessor for IdentityTermsAndConditions() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  return (*v2)(*(v2 + *(v1 + 64)));
}

unint64_t sub_243FA83C0()
{
  result = qword_27EDC1960;
  if (!qword_27EDC1960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1968);
    sub_243FA8118();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1960);
  }

  return result;
}

uint64_t sub_243FA8478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_243FA84E0()
{
  result = qword_27EDC1988;
  if (!qword_27EDC1988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1978);
    sub_243FA859C(&qword_27EDC1990, type metadata accessor for HTMLView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1988);
  }

  return result;
}

uint64_t sub_243FA859C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_243FA860C(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_243FA86EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2440D1380();
  return sub_243FA8774;
}

void sub_243FA8774(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_243FA87C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PINButtonModelFactory();
  sub_2440AB154(v9);
  v2 = sub_2440AB1C4(v9, 0, 1);
  v3 = __swift_destroy_boxed_opaque_existential_0(v9);
  v4 = (*(*v2 + 120))(v3);

  v5 = sub_2440D1C20();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19B8);
  a1[4] = sub_243F5DD50(&qword_27EDC19C0, &qword_27EDC19B8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  *boxed_opaque_existential_1 = v5;
  boxed_opaque_existential_1[1] = 0;
  *(boxed_opaque_existential_1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19C8);
  sub_243FA88F0(v4, boxed_opaque_existential_1 + *(v7 + 44));
}

uint64_t sub_243FA88F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19D0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v18[1] = a1;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19D8);
  sub_243F5DD50(&qword_27EDC19E0, &qword_27EDC19D8);
  sub_243FA9598(&qword_27EDC19E8, MEMORY[0x277CC95F0]);
  sub_243FA94D4();
  sub_2440D29B0();
  LOBYTE(a1) = sub_2440D20B0();
  sub_2440D13D0();
  v11 = &v10[*(v5 + 44)];
  *v11 = a1;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  sub_243FA9528(v10, v8);
  *a2 = 0x4069000000000000;
  *(a2 + 8) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19F8);
  sub_243FA9528(v8, a2 + *(v16 + 48));
  sub_243F5EED4(v10, &qword_27EDC19D0);
  return sub_243F5EED4(v8, &qword_27EDC19D0);
}

uint64_t sub_243FA8B24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  v4 = sub_243F4E2F4() & 1;

  return sub_2440112E4(v3, 0, v4, a2);
}

uint64_t sub_243FA8BE8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A00);
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v57 - v11);
  v72 = sub_2440D1690();
  v64 = *(v72 - 8);
  v13 = MEMORY[0x28223BE20](v72);
  v68 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A08);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  v22 = sub_2440D16F0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v70 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A10);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v57 - v26;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A18);
  MEMORY[0x28223BE20](v66);
  v29 = &v57 - v28;
  sub_243FA9598(&qword_27EDC1A20, MEMORY[0x277CDF7F8]);
  sub_2440D3400();
  result = sub_2440D3410();
  if (v73[0] != v74)
  {
    v67 = v19;
    v71 = v10;
    v61 = v12;
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    v31 = CGRectGetWidth(v75) / 3.0;
    v76.origin.x = a2;
    v76.origin.y = a3;
    v76.size.width = a4;
    v76.size.height = a5;
    v32 = v31;
    v33 = CGRectGetHeight(v76) * 0.25;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    CGRectGetMinX(v77);
    v78.size.height = a5;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    CGRectGetMinY(v78);
    (*(v23 + 16))(v27, a1, v22);
    (*(v23 + 32))(v70, v27, v22);
    sub_243FA9598(&qword_27EDC1A28, MEMORY[0x277CDF7F8]);
    sub_2440D31D0();
    v59 = *(v66 + 36);
    *&v29[v59] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A30);
    v66 = 0;
    v35 = *(v34 + 36);
    v60 = (v64 + 16);
    v70 = (v64 + 32);
    v36 = (v69 + 56);
    v65 = (v69 + 48);
    v63 = (v64 + 8);
    v69 = v21;
    v64 = v22;
    v37 = v29;
    v58 = v36;
    while (1)
    {
      sub_2440D3410();
      if (*(v37 + v35) == v73[0])
      {
        v38 = 1;
        v39 = v67;
      }

      else
      {
        v40 = v33;
        v41 = v32;
        v42 = sub_2440D3430();
        v43 = v62;
        v44 = v72;
        (*v60)(v62);
        v42(v73, 0);
        sub_2440D3420();
        v45 = v70;
        v46 = *(v71 + 48);
        v47 = v61;
        v48 = v66;
        *v61 = v66;
        result = (*v45)(v47 + v46, v43, v44);
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          __break(1u);
          return result;
        }

        v66 = v50;
        *(v37 + v59) = v50;
        v51 = v47;
        v39 = v67;
        sub_243F681C8(v51, v67, &qword_27EDC1A00);
        v38 = 0;
        v21 = v69;
        v32 = v41;
        v33 = v40;
        v36 = v58;
      }

      v52 = v71;
      (*v36)(v39, v38, 1, v71);
      sub_243F681C8(v39, v21, &qword_27EDC1A08);
      if ((*v65)(v21, 1, v52) == 1)
      {
        return sub_243F5EED4(v37, &qword_27EDC1A18);
      }

      v53 = &v21[*(v52 + 48)];
      v54 = v68;
      v55 = v72;
      (*v70)(v68, v53, v72);
      sub_2440D2C40();
      LOBYTE(v73[0]) = 0;
      LOBYTE(v74) = 0;
      sub_2440D1680();
      v56 = v54;
      v21 = v69;
      (*v63)(v56, v55);
    }
  }

  return result;
}

unint64_t sub_243FA93A4()
{
  result = qword_27EDC19A8;
  if (!qword_27EDC19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC19A8);
  }

  return result;
}

unint64_t sub_243FA93FC()
{
  result = qword_27EDC19B0;
  if (!qword_27EDC19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC19B0);
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

unint64_t sub_243FA94D4()
{
  result = qword_27EDC19F0;
  if (!qword_27EDC19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC19F0);
  }

  return result;
}

uint64_t sub_243FA9528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC19D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FA9598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243FA95E0()
{
  type metadata accessor for AppManager();
  v0 = swift_allocObject();
  result = sub_243FAAECC();
  qword_27EDC95F0 = v0;
  return result;
}

uint64_t *sub_243FA9620()
{
  if (qword_27EDC95E8 != -1)
  {
    swift_once();
  }

  return &qword_27EDC95F0;
}

uint64_t static AppManager.shared.getter()
{
  if (qword_27EDC95E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AppManager.shared.setter(uint64_t a1)
{
  if (qword_27EDC95E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EDC95F0 = a1;
}

uint64_t (*static AppManager.shared.modify())()
{
  if (qword_27EDC95E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_243FA97F0@<X0>(void *a1@<X8>)
{
  if (qword_27EDC95E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27EDC95F0;
}

uint64_t sub_243FA9870(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27EDC95E8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EDC95F0 = v1;
}

uint64_t sub_243FA98F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 160))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = &unk_2440DA328;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_243FA9988(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_243FA9A74;

  return v5();
}

uint64_t sub_243FA9A74(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_243FA9B88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_2440DA320;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 168);
  sub_243F7EE68(v3);
  return v7(v6, v5);
}

uint64_t sub_243FA9C40(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243FA9D30;

  return v4(v1 + 24);
}

uint64_t sub_243FA9D30()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = *(v3 + 8);
  }

  return v4(v5);
}

uint64_t sub_243FA9E4C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_243F7EE68(v1);
  return v1;
}

uint64_t sub_243FA9E9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_243F7EE58(v5);
}

uint64_t sub_243FA9F40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 184))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = &unk_2440DA318;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_243FA9FD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_2440DA308;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 192);
  sub_243F7EE68(v3);
  return v7(v6, v5);
}

uint64_t sub_243FAA088()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_243F7EE68(v1);
  return v1;
}

uint64_t sub_243FAA0D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_243F7EE58(v5);
}

uint64_t sub_243FAA1B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_243FAA1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_transactionContext;
  swift_beginAccess();
  return sub_243F5F574(v1 + v3, a1, &qword_27EDBFFD0);
}

uint64_t sub_243FAA264(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_transactionContext;
  swift_beginAccess();
  sub_243FAA2C4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_243FAA2C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FAA394()
{
  v1 = (v0 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_animatedClose);
  swift_beginAccess();
  v2 = *v1;
  sub_243F7EE68(*v1);
  return v2;
}

uint64_t sub_243FAA3F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_animatedClose);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_243F7EE58(v6);
}

void *sub_243FAA4B0()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_interruptionMonitor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_243FAA4FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_interruptionMonitor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_243FAA5B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_customerLocale;
  swift_beginAccess();
  v4 = sub_2440D08A0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_243FAA63C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_customerLocale;
  swift_beginAccess();
  v4 = sub_2440D08A0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_243FAA740@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243FAA7FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t (*sub_243FAA8B8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager__disableSleep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t sub_243FAAA3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243FAAAF8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_243FAABA8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  return swift_endAccess();
}

uint64_t sub_243FAAC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243FAAD5C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager__disableHomeAction;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243FAAECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20]();
  v3 = &v21[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v21[-v6];
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_transactionContext;
  v9 = type metadata accessor for TransactionContext(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = (v1 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_animatedClose);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_interruptionMonitor) = 0;
  sub_2440D0800();
  v11 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager__disableSleep;
  v21[15] = 0;
  sub_2440D1300();
  v12 = *(v5 + 32);
  v12(v1 + v11, v7, v4);
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager__disableHomeAction;
  v21[14] = 0;
  sub_2440D1300();
  v12(v1 + v13, v7, v4);
  v14 = sub_243F4E038();
  sub_243F5F574(v14, v3, &qword_27EDC0A50);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  else
  {
    v17 = sub_2440D11C0();
    v18 = sub_2440D3490();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_243F48000, v17, v18, "AppManager Created", v19, 2u);
      MEMORY[0x245D58570](v19, -1, -1);
    }

    (*(v16 + 8))(v3, v15);
  }

  return v1;
}

uint64_t sub_243FAB1FC()
{
  v1 = v0;
  v2 = sub_2440D08A0();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_243F4E038();
  sub_243F5F574(v11, v10, &qword_27EDC0A50);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {
    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243F48000, v14, v15, "AppManager Cleanup", v16, 2u);
      MEMORY[0x245D58570](v16, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  (*(*v1 + 168))(0, 0);
  v17 = *(*v1 + 192);
  v17(0, 0);
  (*(*v1 + 288))(0, 0);
  v17(0, 0);
  v18 = type metadata accessor for TransactionContext(0);
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(*v1 + 264))(v7);
  swift_unknownObjectWeakAssign();
  (*(*v1 + 360))(0);
  v19 = (*(*v1 + 408))(0);
  v20 = (*(*v1 + 304))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = sub_243F4E2F4();
    (*((*MEMORY[0x277D85000] & *v21) + 0x100))(v22 & 1);
  }

  (*(*v1 + 312))(0);
  sub_2440D0800();
  v23 = (*(*v1 + 336))(v4);
  v24 = (*(*v1 + 208))(v23);
  if (v24)
  {
    (*(*v24 + 248))(v24);
  }

  swift_beginAccess();
  v1[6] = 0;
}

uint64_t sub_243FAB76C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);

  return v6(a1, a2);
}

uint64_t sub_243FAB7E4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);

  return v6(a1, a2);
}

uint64_t sub_243FAB864(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);

  return v6(a1, a2);
}

uint64_t sub_243FAB8DC()
{
  (*(*v0 + 192))(0, 0);
  (*(*v0 + 288))(0, 0);
  v1 = *(*v0 + 168);

  return v1(0, 0);
}

uint64_t sub_243FAB994(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MerchantdProxy();
  v4 = sub_243FEA978();
  swift_beginAccess();
  v2[6] = v4;

  result = (*(*v2 + 208))(v5);
  if (result)
  {
    (*(*result + 240))(a1);
  }

  return result;
}

uint64_t sub_243FABA5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v80 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v76 - v7;
  v9 = type metadata accessor for TapContext(0);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC4AE0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v78 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v76 - v17;
  v19 = sub_2440D08A0();
  v20 = *(v19 - 8);
  v84 = v19;
  v85 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v77 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v81 = &v76 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v76 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFD0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v76 - v30;
  v32 = type metadata accessor for TransactionContext(0);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(*v0 + 256);
  v87 = v0;
  v37(v34);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_243F5EED4(v31, &qword_27EDBFFD0);
    v38 = sub_243F4E038();
    sub_243F5F574(v38, v4, &qword_27EDC0A50);
    v39 = sub_2440D11E0();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v4, 1, v39) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v51 = sub_2440D11C0();
      v52 = sub_2440D3470();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_243F48000, v51, v52, "Attempted to configure appManager localization without transactionContext", v53, 2u);
        MEMORY[0x245D58570](v53, -1, -1);
      }

      (*(v40 + 8))(v4, v39);
    }

    v54 = v86;
    sub_2440D0800();
    return (*(*v87 + 336))(v54);
  }

  else
  {
    sub_243FADFB0(v31, v36, type metadata accessor for TransactionContext);
    v41 = *&v36[*(v32 + 20)];
    v42 = v36;
    if (v41)
    {
      v43 = v36;
      v44 = *(*v41 + 384);

      v44(v45);
      v47 = v84;
      v46 = v85;
      v48 = *(v85 + 48);
      if (v48(v18, 1, v84) == 1)
      {
        v49 = sub_243F5EED4(v18, &qword_27EDC4AE0);
        (*(*v41 + 360))(v49);
        if (v48(v16, 1, v47) == 1)
        {
          v50 = v81;
          sub_2440D0800();
          if (v48(v16, 1, v47) != 1)
          {
            sub_243F5EED4(v16, &qword_27EDC4AE0);
          }
        }

        else
        {
          v50 = v81;
          (*(v46 + 32))(v81, v16, v47);
        }

        (*(*v87 + 336))(v50);
      }

      else
      {
        (*(v46 + 32))(v28, v18, v47);
        v62 = *(v46 + 16);
        v63 = v46;
        v64 = v86;
        v62(v86, v28, v47);
        (*(*v87 + 336))(v64);

        (*(v63 + 8))(v28, v47);
      }

      v71 = v43;
    }

    else
    {
      sub_243F5F574(v36, v8, &qword_27EDC1A38);
      v56 = (*(v82 + 48))(v8, 1, v83);
      v57 = v85;
      if (v56 == 1)
      {
        sub_243F5EED4(v8, &qword_27EDC1A38);
        v58 = sub_243F4E038();
        v59 = v80;
        sub_243F5F574(v58, v80, &qword_27EDC0A50);
        v60 = sub_2440D11E0();
        v61 = *(v60 - 8);
        if ((*(v61 + 48))(v59, 1, v60) == 1)
        {
          sub_243F5EED4(v59, &qword_27EDC0A50);
        }

        else
        {
          v72 = sub_2440D11C0();
          v73 = sub_2440D3470();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_243F48000, v72, v73, "No valid tap context or pin context exists - cannot set locale", v74, 2u);
            MEMORY[0x245D58570](v74, -1, -1);
          }

          (*(v61 + 8))(v59, v60);
        }

        v75 = v86;
        sub_2440D0800();
        (*(*v87 + 336))(v75);
      }

      else
      {
        v65 = v79;
        sub_243FADFB0(v8, v79, type metadata accessor for TapContext);
        v66 = v78;
        sub_2440D0BA0();
        v67 = *(v57 + 48);
        v68 = v57;
        v69 = v84;
        if (v67(v66, 1, v84) == 1)
        {
          v70 = v77;
          sub_2440D0800();
          if (v67(v66, 1, v69) != 1)
          {
            sub_243F5EED4(v66, &qword_27EDC4AE0);
          }
        }

        else
        {
          v70 = v77;
          (*(v68 + 32))(v77, v66, v69);
        }

        (*(*v87 + 336))(v70);
        sub_243FAE018(v65, type metadata accessor for TapContext);
      }

      v71 = v42;
    }

    return sub_243FAE018(v71, type metadata accessor for TransactionContext);
  }
}

uint64_t sub_243FAC56C()
{
  v1 = (*(*v0 + 280))();
  if (v1)
  {
    v2 = v1;
    v1();

    return sub_243F7EE58(v2);
  }

  else
  {
    v4 = *(*v0 + 536);

    return v4();
  }
}

void sub_243FAC634()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4DEE8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x736F4865736F6C63, 0xEB00000000292874, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t AppManager.deinit()
{
  sub_243F7EE58(*(v0 + 16));
  sub_243F7EE58(*(v0 + 32));

  MEMORY[0x245D58620](v0 + 56);
  sub_243F5EED4(v0 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_transactionContext, &qword_27EDBFFD0);
  sub_243F7EE58(*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_animatedClose));

  v1 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager_customerLocale;
  v2 = sub_2440D08A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI10AppManager__disableSleep;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC19ContactlessReaderUI10AppManager__disableHomeAction, v4);
  return v0;
}

uint64_t AppManager.__deallocating_deinit()
{
  AppManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_243FAC968@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v184 = a3;
  v185 = a2;
  LODWORD(v183) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v181 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v180 = &v169 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v178 = &v169 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v182 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v179 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v177 = &v169 - v15;
  MEMORY[0x28223BE20](v14);
  v173 = &v169 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A38);
  MEMORY[0x28223BE20](v17 - 8);
  v176 = &v169 - v18;
  v175 = type metadata accessor for TapContext(0);
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v20 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1A40);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v169 - v22;
  v24 = sub_2440D0BD0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v169 - v29;
  v31 = sub_2440D0B50();
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v169 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v169 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = MEMORY[0x28223BE20](&v169 - v39);
  v42 = &v169 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v48 = &v169 - v44;
  if (!v183)
  {
    v180 = v43;
    v76 = v182;
    v169 = v28;
    v170 = v23;
    v171 = v30;
    v172 = v25;
    v181 = v24;
    v178 = v20;
    v77 = *MEMORY[0x277D43728];
    v78 = v45;
    v79 = v46;
    v183 = *(v46 + 104);
    v183(&v169 - v44, v77, v45);
    v80 = sub_2440D0B40();
    v82 = v81;
    v83 = *(v79 + 8);
    v83(v48, v78);
    v186 = v80;
    v187 = v82;
    sub_2440D37F0();
    if (*(v185 + 16) && (v84 = sub_243F72720(v188), (v85 & 1) != 0))
    {
      sub_243F4F028(*(v185 + 56) + 32 * v84, &v189);
      sub_243F73BE8(v188);
      if (swift_dynamicCast())
      {
        v86 = v187;
        v182 = v186;
        v183(v42, *MEMORY[0x277D43760], v78);
        v87 = sub_2440D0B40();
        v89 = v88;
        v83(v42, v78);
        v186 = v87;
        v187 = v89;
        sub_2440D37F0();
        if (*(v185 + 16) && (v90 = sub_243F72720(v188), (v91 & 1) != 0))
        {
          sub_243F4F028(*(v185 + 56) + 32 * v90, &v189);
          sub_243F73BE8(v188);
          if (swift_dynamicCast())
          {
            v92 = v186;
            v93 = v187;
            v94 = v180;
            v183(v180, *MEMORY[0x277D43738], v78);
            v95 = sub_2440D0B40();
            v97 = v96;
            v83(v94, v78);
            v189 = v95;
            v190 = v97;
            sub_2440D37F0();
            if (*(v185 + 16) && (v98 = sub_243F72720(v188), (v99 & 1) != 0))
            {
              v100 = v92;
              sub_243F4F028(*(v185 + 56) + 32 * v98, &v189);
              sub_243F73BE8(v188);
              v101 = swift_dynamicCast();
              v102 = v86;
              v104 = v177;
              v103 = v178;
              v105 = v172;
              v106 = v171;
              if (v101)
              {
                v107 = v186;
              }

              else
              {
                v107 = 1;
              }

              LODWORD(v183) = v107;
              v146 = v181;
              v147 = v182;
            }

            else
            {
              v100 = v92;
              sub_243F73BE8(v188);
              LODWORD(v183) = 1;
              v102 = v86;
              v146 = v181;
              v147 = v182;
              v104 = v177;
              v103 = v178;
              v105 = v172;
              v106 = v171;
            }

            sub_243FAE078();
            sub_2440D0E80();
            v185 = v102;
            v155 = sub_2440D34E0();
            if (v155)
            {
              v182 = v155;
              sub_2440D02D0();
              swift_allocObject();
              sub_2440D02C0();
              sub_243FAE0C4();
              v162 = v170;
              sub_2440D02B0();

              (*(v105 + 56))(v162, 0, 1, v146);
              (*(v105 + 32))(v106, v162, v146);
              v163 = v169;
              v164 = v106;
              (*(v105 + 16))(v169, v106, v146);
              v165 = v182;
              v166 = v103;
              sub_244055654(v165, v163, v183, v103);
              v167 = v176;
              sub_243FAE11C(v103, v176);
              (*(v174 + 56))(v167, 0, 1, v175);
              v168 = v184;
              sub_244055588(v167, 0, v184);
              sub_243F5D81C(v100, v93);
              sub_243F5D81C(v147, v185);

              sub_243FAE018(v166, type metadata accessor for TapContext);
              (*(v105 + 8))(v164, v146);
              v126 = type metadata accessor for TransactionContext(0);
              v127 = *(*(v126 - 8) + 56);
              v128 = v168;
              goto LABEL_75;
            }

            v156 = sub_243F4DF28();
            sub_243F5F574(v156, v104, &qword_27EDC0A50);
            v157 = sub_2440D11E0();
            v158 = *(v157 - 8);
            if ((*(v158 + 48))(v104, 1, v157) == 1)
            {
              sub_243F5D81C(v100, v93);
              sub_243F5D81C(v147, v185);
              sub_243F5EED4(v104, &qword_27EDC0A50);
            }

            else
            {
              v159 = sub_2440D11C0();
              v160 = sub_2440D3490();
              if (os_log_type_enabled(v159, v160))
              {
                v161 = swift_slowAlloc();
                *v161 = 0;
                _os_log_impl(&dword_243F48000, v159, v160, "Unable to decode transaction request", v161, 2u);
                MEMORY[0x245D58570](v161, -1, -1);
              }

              sub_243F5D81C(v100, v93);
              sub_243F5D81C(v147, v185);

              (*(v158 + 8))(v104, v157);
            }

            goto LABEL_50;
          }
        }

        else
        {
          sub_243F73BE8(v188);
        }

        v134 = v86;
        v135 = sub_243F4DF28();
        v76 = v179;
        sub_243F5F574(v135, v179, &qword_27EDC0A50);
        v120 = sub_2440D11E0();
        v121 = *(v120 - 8);
        v136 = (*(v121 + 48))(v76, 1, v120);
        v137 = v182;
        if (v136 == 1)
        {
          sub_243F5D81C(v182, v134);
          goto LABEL_31;
        }

        v129 = sub_2440D11C0();
        v138 = sub_2440D3490();
        if (os_log_type_enabled(v129, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&dword_243F48000, v129, v138, "Unable to fetch merchant details from SB remote context", v139, 2u);
          MEMORY[0x245D58570](v139, -1, -1);
        }

        sub_243F5D81C(v137, v134);
        goto LABEL_49;
      }
    }

    else
    {
      sub_243F73BE8(v188);
    }

    v119 = sub_243F4DF28();
    sub_243F5F574(v119, v76, &qword_27EDC0A50);
    v120 = sub_2440D11E0();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v76, 1, v120) == 1)
    {
LABEL_31:
      sub_243F5EED4(v76, &qword_27EDC0A50);
LABEL_50:
      v126 = type metadata accessor for TransactionContext(0);
      v127 = *(*(v126 - 8) + 56);
      v128 = v184;
      goto LABEL_51;
    }

    v129 = sub_2440D11C0();
    v130 = sub_2440D3490();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_243F48000, v129, v130, "Unable to fetch transaction from SB remote context", v131, 2u);
      MEMORY[0x245D58570](v131, -1, -1);
    }

LABEL_49:

    (*(v121 + 8))(v76, v120);
    goto LABEL_50;
  }

  if (v183 == 1)
  {
    v183 = v47;
    v49 = *(v46 + 104);
    v50 = v45;
    v51 = v46;
    v49(v38, *MEMORY[0x277D43768], v45);
    v52 = sub_2440D0B40();
    v54 = v53;
    v55 = *(v51 + 8);
    v55(v38, v50);
    v186 = v52;
    v187 = v54;
    sub_2440D37F0();
    if (*(v185 + 16) && (v56 = sub_243F72720(v188), (v57 & 1) != 0))
    {
      sub_243F4F028(*(v185 + 56) + 32 * v56, &v189);
      sub_243F73BE8(v188);
      if (swift_dynamicCast())
      {
        v58 = v187;
        v182 = v186;
        v49(v35, *MEMORY[0x277D43770], v50);
        v59 = sub_2440D0B40();
        v61 = v60;
        v55(v35, v50);
        v186 = v59;
        v187 = v61;
        v62 = v185;
        sub_2440D37F0();
        if (*(v62 + 16) && (v63 = sub_243F72720(v188), (v64 & 1) != 0))
        {
          sub_243F4F028(*(v62 + 56) + 32 * v63, &v189);
          sub_243F73BE8(v188);
          if (swift_dynamicCast())
          {
            v181 = v58;
            v66 = v186;
            v65 = v187;
            v67 = v183;
            v49(v183, *MEMORY[0x277D43738], v50);
            v68 = sub_2440D0B40();
            v70 = v69;
            v55(v67, v50);
            v189 = v68;
            v190 = v70;
            sub_2440D37F0();
            if (*(v185 + 16) && (v71 = sub_243F72720(v188), (v72 & 1) != 0))
            {
              sub_243F4F028(*(v185 + 56) + 32 * v71, &v189);
              sub_243F73BE8(v188);
              v73 = swift_dynamicCast();
              v74 = v184;
              if (v73)
              {
                v75 = v186;
              }

              else
              {
                v75 = 1;
              }
            }

            else
            {
              sub_243F73BE8(v188);
              v75 = 1;
              v74 = v184;
            }

            v141 = v178;
            sub_243FAE078();
            sub_2440D0D50();
            v142 = sub_2440D34E0();
            if (v142)
            {
              v151 = v142;
              type metadata accessor for PINContext(0);
              v152 = v151;
              v153 = sub_244056094(v152, v182, v181, 1, v75);
              v154 = v176;
              (*(v174 + 56))(v176, 1, 1, v175);

              sub_244055588(v154, v153, v74);

              sub_243F5D81C(v66, v65);
              v126 = type metadata accessor for TransactionContext(0);
              v127 = *(*(v126 - 8) + 56);
              v128 = v74;
LABEL_75:
              v140 = 0;
              return v127(v128, v140, 1, v126);
            }

            v143 = sub_243F4DF28();
            sub_243F5F574(v143, v141, &qword_27EDC0A50);
            v144 = sub_2440D11E0();
            v145 = *(v144 - 8);
            if ((*(v145 + 48))(v141, 1, v144) == 1)
            {
              sub_243F5D81C(v66, v65);
              sub_243F5EED4(v141, &qword_27EDC0A50);
            }

            else
            {
              v148 = sub_2440D11C0();
              v149 = sub_2440D3470();
              if (os_log_type_enabled(v148, v149))
              {
                v150 = swift_slowAlloc();
                *v150 = 0;
                _os_log_impl(&dword_243F48000, v148, v149, "Unable to decode pinConfiguration", v150, 2u);
                MEMORY[0x245D58570](v150, -1, -1);
              }

              sub_243F5D81C(v66, v65);

              (*(v145 + 8))(v141, v144);
            }

            v126 = type metadata accessor for TransactionContext(0);
            v127 = *(*(v126 - 8) + 56);
            v128 = v74;
LABEL_51:
            v140 = 1;
            return v127(v128, v140, 1, v126);
          }
        }

        else
        {
          sub_243F73BE8(v188);
        }

        v132 = sub_243F4DF28();
        v114 = v180;
        sub_243F5F574(v132, v180, &qword_27EDC0A50);
        v115 = sub_2440D11E0();
        v116 = *(v115 - 8);
        v133 = (*(v116 + 48))(v114, 1, v115);
        v118 = v184;
        if (v133 != 1)
        {
          v122 = sub_2440D11C0();
          v123 = sub_2440D3470();
          if (!os_log_type_enabled(v122, v123))
          {
            goto LABEL_35;
          }

          v124 = swift_slowAlloc();
          *v124 = 0;
          v125 = "Unable to retrieve pinConfiguration from SB remote context";
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_243F73BE8(v188);
    }

    v113 = sub_243F4DF28();
    v114 = v181;
    sub_243F5F574(v113, v181, &qword_27EDC0A50);
    v115 = sub_2440D11E0();
    v116 = *(v115 - 8);
    v117 = (*(v116 + 48))(v114, 1, v115);
    v118 = v184;
    if (v117 != 1)
    {
      v122 = sub_2440D11C0();
      v123 = sub_2440D3490();
      if (!os_log_type_enabled(v122, v123))
      {
LABEL_35:

        (*(v116 + 8))(v114, v115);
        goto LABEL_36;
      }

      v124 = swift_slowAlloc();
      *v124 = 0;
      v125 = "Unable to decode PIN token";
LABEL_34:
      _os_log_impl(&dword_243F48000, v122, v123, v125, v124, 2u);
      MEMORY[0x245D58570](v124, -1, -1);
      goto LABEL_35;
    }

LABEL_28:
    sub_243F5EED4(v114, &qword_27EDC0A50);
LABEL_36:
    v126 = type metadata accessor for TransactionContext(0);
    v127 = *(*(v126 - 8) + 56);
    v128 = v118;
    goto LABEL_51;
  }

  v108 = type metadata accessor for TransactionContext(0);
  v109 = *(*(v108 - 8) + 56);
  v110 = v108;
  v111 = v184;

  return v109(v111, 1, 1, v110);
}

uint64_t sub_243FADFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243FAE018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_243FAE078()
{
  result = qword_27EDC1A48;
  if (!qword_27EDC1A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC1A48);
  }

  return result;
}

unint64_t sub_243FAE0C4()
{
  result = qword_27EDC1A50;
  if (!qword_27EDC1A50)
  {
    sub_2440D0BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1A50);
  }

  return result;
}

uint64_t sub_243FAE11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppManager()
{
  result = qword_27EDC9628;
  if (!qword_27EDC9628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243FAE1D4()
{
  sub_243FAE3F4();
  if (v0 <= 0x3F)
  {
    sub_2440D08A0();
    if (v1 <= 0x3F)
    {
      sub_243FAE44C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243FAE3F4()
{
  if (!qword_27EDC1A58)
  {
    type metadata accessor for TransactionContext(255);
    v0 = sub_2440D3630();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC1A58);
    }
  }
}

void sub_243FAE44C()
{
  if (!qword_27EDBFF90)
  {
    v0 = sub_2440D1360();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDBFF90);
    }
  }
}

uint64_t sub_243FAE4C0()
{

  return swift_deallocObject();
}

uint64_t sub_243FAE4F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F614;

  return sub_243FA9C40(v2);
}

uint64_t sub_243FAE5A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5F610;

  return sub_243FA9988(a1, v4);
}

uint64_t sub_243FAE65C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DA80;

  return sub_243FA9C40(v2);
}

uint64_t sub_243FAE708(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5DE2C;

  return sub_243FA9988(a1, v4);
}

uint64_t sub_243FAE7CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v4 = 2;
  if (!v17)
  {
    v4 = 0;
  }

  *&v15 = a1[v4];

  sub_243F4EF64();
  v5 = sub_2440D2310();
  v7 = v6;
  v14 = v8;
  v10 = v9;
  sub_2440D2840();
  v12 = *a1;
  v11 = a1[1];

  sub_2440D2810();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v15;
  *(a2 + 72) = v12;
  *(a2 + 80) = v11;
  sub_243FAFCA4(v5, v7, v14 & 1);

  sub_243F62C68(v5, v7, v14 & 1);
}

uint64_t sub_243FAE940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_2440D2810();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  return result;
}

double sub_243FAE9B8@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2440D2B00();
  v5 = v4;
  sub_243FAE7CC(v1, &v10);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v16 = v10;
  v17 = v11;
  v23 = v15;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[0] = v10;
  v22[1] = v11;
  sub_243F5F574(&v16, &v9, &qword_27EDC1A60);
  sub_243F5EED4(v22, &qword_27EDC1A60);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v19;
  *(a1 + 48) = v18;
  *(a1 + 64) = v6;
  *(a1 + 80) = v20;
  *(a1 + 96) = v21;
  result = *&v16;
  v8 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v8;
  return result;
}

double sub_243FAEA98@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2440D2B00();
  v43 = v5;
  v44 = v4;
  v86 = *(v1 + 40);
  v61 = *(v1 + 40);
  sub_243F4EF64();
  swift_bridgeObjectRetain_n();
  v6 = sub_2440D2310();
  v41 = v7;
  v42 = v6;
  v9 = v8;
  v46 = v10;
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  v40 = v11;
  *(v11 + 64) = *(v2 + 48);
  sub_243FAFB90(v2, &v61);
  v13 = sub_2440D2B00();
  v38 = v14;
  v39 = v13;
  v15 = v9 & 1;
  LOBYTE(v61) = v9 & 1;
  LOBYTE(v51) = 0;
  v61 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  if (*&v51 <= 0.0)
  {
    sub_243FAFBC8(&v86);
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    *&v48 = 0;
  }

  else
  {
    v61 = v86;
    v16 = sub_2440D2310();
    v36 = v17;
    v37 = v18;
    v20 = v19;
    v21 = swift_allocObject();
    v22 = *(v2 + 16);
    *(v21 + 16) = *v2;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(v2 + 32);
    *(v21 + 64) = *(v2 + 48);
    sub_243FAFB90(v2, &v61);
    v23 = sub_2440D2B00();
    v25 = v24;
    v20 &= 1u;
    LOBYTE(v61) = v20;
    v26 = v16;
    v27 = v16;
    v28 = v36;
    sub_243FAFCA4(v27, v36, v20);
    LOBYTE(v48) = v20;
    v29 = v37;

    v30 = sub_243FAFC6C;
  }

  *&v47 = v26;
  *(&v47 + 1) = v28;
  *(&v48 + 1) = v29;
  *&v49 = v30;
  *(&v49 + 1) = v21;
  *&v50 = v23;
  *(&v50 + 1) = v25;
  v77 = v47;
  v78 = v48;
  v79 = v49;
  v80 = v50;
  *&v51 = v42;
  *(&v51 + 1) = v41;
  LOBYTE(v52) = v15;
  *(&v52 + 1) = v46;
  *&v53 = KeyPath;
  *(&v53 + 1) = 1;
  LOBYTE(v54) = 0;
  *(&v54 + 1) = sub_243FAFB58;
  *&v55 = v40;
  *(&v55 + 1) = v39;
  *&v56 = v38;
  v71 = v51;
  v72 = v52;
  *v76 = v38;
  v74 = v54;
  v75 = v55;
  v73 = v53;
  v83 = v49;
  v84 = v50;
  v81 = v47;
  v82 = v48;
  sub_243F5F574(&v51, &v61, &qword_27EDC1AD0);
  sub_243F5F574(&v81, &v61, &qword_27EDC1AD8);
  sub_243F5EED4(&v47, &qword_27EDC1AD8);
  *&v76[8] = v81;
  *&v76[24] = v82;
  *&v76[40] = v83;
  *&v76[56] = v84;
  v85[0] = v77;
  v85[1] = v78;
  v85[2] = v79;
  v85[3] = v80;
  sub_243F5EED4(v85, &qword_27EDC1AD8);
  *&v61 = v42;
  *(&v61 + 1) = v41;
  LOBYTE(v62) = v15;
  *(&v62 + 1) = v88[0];
  DWORD1(v62) = *(v88 + 3);
  *(&v62 + 1) = v46;
  *&v63 = KeyPath;
  *(&v63 + 1) = 1;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v87;
  DWORD1(v64) = *&v87[3];
  *(&v64 + 1) = sub_243FAFB58;
  *&v65 = v40;
  *(&v65 + 1) = v39;
  *&v66 = v38;
  sub_243F5EED4(&v61, &qword_27EDC1AD0);
  v57 = *&v76[16];
  v58 = *&v76[32];
  v59 = *&v76[48];
  v53 = v73;
  v54 = v74;
  v55 = v75;
  v56 = *v76;
  v51 = v71;
  v52 = v72;
  v67 = *&v76[16];
  v68 = *&v76[32];
  v69 = *&v76[48];
  v63 = v73;
  v64 = v74;
  v65 = v75;
  v66 = *v76;
  v60 = *&v76[64];
  v70 = *&v76[64];
  v61 = v71;
  v62 = v72;
  sub_243F5F574(&v51, &v47, &qword_27EDC1A68);
  sub_243F5EED4(&v61, &qword_27EDC1A68);
  *a1 = v44;
  *(a1 + 8) = v43;
  v31 = v58;
  *(a1 + 112) = v57;
  *(a1 + 128) = v31;
  *(a1 + 144) = v59;
  *(a1 + 160) = v60;
  v32 = v54;
  *(a1 + 48) = v53;
  *(a1 + 64) = v32;
  v33 = v56;
  *(a1 + 80) = v55;
  *(a1 + 96) = v33;
  result = *&v51;
  v35 = v52;
  *(a1 + 16) = v51;
  *(a1 + 32) = v35;
  return result;
}

uint64_t sub_243FAEF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_2440D3360();
  v5[7] = sub_2440D3350();
  v7 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243FAEFAC, v7, v6);
}

uint64_t sub_243FAEFAC()
{
  v1 = *(v0 + 40);

  sub_2440D1650();
  *(v0 + 16) = *(v1 + 24);
  *(v0 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243FAF048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_2440D1670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21[-v11 - 8];
  v13 = sub_2440D3390();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v7);
  sub_2440D3360();
  sub_243FAFB90(a2, v21);
  v14 = sub_2440D3350();
  v15 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  v18 = *(a2 + 16);
  *(v16 + 32) = *a2;
  *(v16 + 48) = v18;
  *(v16 + 64) = *(a2 + 32);
  *(v16 + 80) = *(a2 + 48);
  (*(v8 + 32))(v16 + v15, &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v7);
  sub_243F54830(0, 0, v12, a3, v16);

  result = sub_2440D2690();
  *v20 = result;
  return result;
}

uint64_t sub_243FAF26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_2440D3360();
  v5[8] = sub_2440D3350();
  v7 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243FAF304, v7, v6);
}

uint64_t sub_243FAF304()
{
  v1 = *(v0 + 48);

  *(v0 + 16) = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v2 = *(v0 + 40);
  sub_2440D1650();
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2 != v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  sub_2440D2950();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_243FAF428@<X0>(_OWORD *a1@<X8>)
{
  sub_2440D2810();
  v2 = v42;
  v18 = v43;
  v3 = sub_2440D2160();
  KeyPath = swift_getKeyPath();
  sub_2440D2810();
  v5 = v42;
  v6 = v43;
  v7 = swift_getKeyPath();
  v8 = sub_2440D2160();
  v9 = swift_getKeyPath();
  *&v33 = 0xD00000000000001DLL;
  *(&v33 + 1) = 0x80000002440EA790;
  *&v34 = 0xD00000000000001DLL;
  *(&v34 + 1) = 0x80000002440EA7B0;
  LOBYTE(v35) = v42;
  *(&v35 + 1) = v43;
  *&v36 = KeyPath;
  *(&v36 + 1) = v3;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  *&v37 = 0xD000000000000020;
  *(&v37 + 1) = 0x80000002440EA7D0;
  *&v38 = 0xD000000000000020;
  *(&v38 + 1) = 0x80000002440EA800;
  LOBYTE(v39) = v42;
  *(&v39 + 1) = v43;
  *&v40 = v7;
  BYTE8(v40) = 1;
  *&v41 = v9;
  *(&v41 + 1) = v8;
  v31 = v40;
  v32 = v41;
  v29 = v38;
  v30 = v39;
  v28 = v37;
  v10 = v33;
  v11 = v34;
  v12 = v36;
  a1[2] = v35;
  a1[3] = v12;
  *a1 = v10;
  a1[1] = v11;
  v13 = v28;
  v14 = v29;
  v15 = v32;
  a1[7] = v31;
  a1[8] = v15;
  v16 = v30;
  a1[5] = v14;
  a1[6] = v16;
  a1[4] = v13;
  v42 = 0xD000000000000020;
  v43 = 0x80000002440EA7D0;
  v44 = 0xD000000000000020;
  v45 = 0x80000002440EA800;
  v46 = v5;
  v47 = v6;
  v48 = v7;
  v49 = 1;
  v50 = v9;
  v51 = v8;
  sub_243F5F574(&v33, v19, &qword_27EDC08D8);
  sub_243F5F574(&v37, v19, &qword_27EDC1A70);
  sub_243F5EED4(&v42, &qword_27EDC1A70);
  v19[0] = 0xD00000000000001DLL;
  v19[1] = 0x80000002440EA790;
  v19[2] = 0xD00000000000001DLL;
  v19[3] = 0x80000002440EA7B0;
  v20 = v2;
  v21 = v18;
  v22 = KeyPath;
  v23 = v3;
  return sub_243F5EED4(v19, &qword_27EDC08D8);
}

uint64_t sub_243FAF69C(uint64_t a1)
{
  v2 = sub_243FAFB00();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FAF6E8(uint64_t a1)
{
  v2 = sub_243FAFB00();

  return MEMORY[0x28212D8E0](a1, v2);
}

unint64_t sub_243FAF770()
{
  result = qword_27EDC1A78;
  if (!qword_27EDC1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1A78);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_243FAF7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243FAF83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
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

uint64_t sub_243FAF8B4(uint64_t a1, int a2)
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

uint64_t sub_243FAF8FC(uint64_t result, int a2, int a3)
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

unint64_t sub_243FAF9B0()
{
  result = qword_27EDC1A90;
  if (!qword_27EDC1A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1A98);
    sub_243F5DD50(&qword_27EDC1AA0, &qword_27EDC1AA8);
    sub_243FAFA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1A90);
  }

  return result;
}

unint64_t sub_243FAFA68()
{
  result = qword_27EDC1AB0;
  if (!qword_27EDC1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1AB0);
  }

  return result;
}

unint64_t sub_243FAFB00()
{
  result = qword_27EDC1AC8;
  if (!qword_27EDC1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1AC8);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t sub_243FAFCA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_243FAFCB8()
{
  v2 = *(sub_2440D1670() - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5DE2C;

  return sub_243FAF26C(v4, v5, v6, v0 + 32, v0 + v3);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_2440D1670();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_243FAFE68()
{
  v2 = *(sub_2440D1670() - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_243FAEF14(v4, v5, v6, v0 + 32, v0 + v3);
}

void *sub_243FAFF3C()
{
  type metadata accessor for BrightnessManager();
  v0 = swift_allocObject();
  result = BrightnessManager.init()();
  qword_27EDC9860 = v0;
  return result;
}

uint64_t BrightnessManager.__allocating_init()()
{
  v0 = swift_allocObject();
  BrightnessManager.init()();
  return v0;
}

uint64_t *sub_243FAFFB0()
{
  if (qword_27EDC9858 != -1)
  {
    swift_once();
  }

  return &qword_27EDC9860;
}

uint64_t static BrightnessManager.shared.getter()
{
  if (qword_27EDC9858 != -1)
  {
    swift_once();
  }
}

void *BrightnessManager.init()()
{
  v1 = sub_243FB052C(&unk_285775980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1AE0);
  swift_arrayDestroy();
  v0[3] = v1;
  v2 = sub_243FB052C(&unk_2857759D0);
  swift_arrayDestroy();
  v0[4] = v2;
  v3 = sub_243FB0630(&unk_285775A20);
  sub_243FB072C(&unk_285775A40);
  v0[5] = v3;
  v4 = sub_243FB0630(&unk_285775A58);
  sub_243FB072C(&unk_285775A78);
  v0[6] = v4;
  v0[2] = [objc_allocWithZone(MEMORY[0x277CFD390]) init];
  return v0;
}

Swift::Void __swiftcall BrightnessManager.increaseBrightnessIfNeeded()()
{
  v1 = *(v0 + 16);
  v2 = sub_2440D2EA0();
  v3 = sub_2440D2F80();
  [v1 setProperty:v2 forKey:v3];

  v4 = sub_2440D2EA0();
  v5 = sub_2440D2F80();
  [v1 setProperty:v4 forKey:v5];
}

Swift::Void __swiftcall BrightnessManager.resetBrightnessToSystemDefault()()
{
  v1 = *(v0 + 16);
  v2 = sub_2440D2EA0();
  v3 = sub_2440D2F80();
  [v1 setProperty:v2 forKey:v3];

  v4 = sub_2440D2EA0();
  v5 = sub_2440D2F80();
  [v1 setProperty:v4 forKey:v5];
}

uint64_t BrightnessManager.deinit()
{

  return v0;
}

uint64_t BrightnessManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_243FB03FC(uint64_t a1, uint64_t a2)
{
  sub_2440D3B20();
  sub_2440D30B0();
  v4 = sub_2440D3B50();

  return sub_243FB0474(a1, a2, v4);
}

unint64_t sub_243FB0474(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2440D3A10())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243FB052C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1AF8);
    v3 = sub_2440D3910();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243FB03FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_243FB0630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1AF0);
    v3 = sub_2440D3910();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243FB03FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_243FB072C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_243FB0840(uint64_t a1@<X8>)
{
  v8[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B00);
  MEMORY[0x28223BE20](v2);
  v4 = v8 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B08);
  v6 = *(v5 - 8);
  v8[1] = v5;
  v8[2] = v6;
  MEMORY[0x28223BE20](v5);
  *v4 = sub_2440D1C20();
  *(v4 + 1) = 0x4000000000000000;
  v4[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B10);
  sub_243FB0D18(v1, &v4[*(v7 + 44)]);
}

uint64_t sub_243FB097C()
{
  *(v6 - 144) = *(v1 + 224);
  *(v0 + 32) = *(v1 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v7 = *(v6 - 152);
  *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B18) + 36)) = v7;
  *(v0 + 32) = *(v3 + 208);
  sub_2440D2820();
  v8 = *(v6 - 152) * 0.0174532925;
  sub_2440D2C40();
  v10 = v9;
  v12 = v11;
  v13 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B20) + 36);
  *v13 = v8;
  *(v13 + 8) = v10;
  *(v13 + 16) = v12;
  v14 = sub_2440D20D0();
  sub_2440D13D0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B28) + 36);
  *v23 = v14;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  v24 = swift_allocObject();
  v25 = *(v3 + 208);
  *(v24 + 13) = *(v3 + 192);
  *(v24 + 14) = v25;
  v26 = *(v3 + 240);
  *(v24 + 15) = *(v3 + 224);
  *(v24 + 16) = v26;
  v27 = *(v3 + 144);
  *(v24 + 9) = *(v3 + 128);
  *(v24 + 10) = v27;
  v28 = *(v3 + 176);
  *(v24 + 11) = *(v3 + 160);
  *(v24 + 12) = v28;
  v29 = *(v3 + 80);
  *(v24 + 5) = *(v3 + 64);
  *(v24 + 6) = v29;
  v30 = *(v3 + 112);
  *(v24 + 7) = *(v3 + 96);
  *(v24 + 8) = v30;
  v31 = *(v3 + 16);
  *(v24 + 1) = *v3;
  *(v24 + 2) = v31;
  v32 = *(v3 + 48);
  *(v24 + 3) = *(v3 + 32);
  *(v24 + 4) = v32;
  v33 = (v5 + *(v2 + 36));
  *v33 = sub_243FB1FCC;
  v33[1] = v24;
  v33[2] = 0;
  v33[3] = 0;
  *(v6 - 152) = *(v3 + 200);
  v34 = swift_allocObject();
  v35 = *(v3 + 208);
  v34[13] = *(v3 + 192);
  v34[14] = v35;
  v36 = *(v3 + 240);
  v34[15] = *(v3 + 224);
  v34[16] = v36;
  v37 = *(v3 + 144);
  v34[9] = *(v3 + 128);
  v34[10] = v37;
  v38 = *(v3 + 176);
  v34[11] = *(v3 + 160);
  v34[12] = v38;
  v39 = *(v3 + 80);
  v34[5] = *(v3 + 64);
  v34[6] = v39;
  v40 = *(v3 + 112);
  v34[7] = *(v3 + 96);
  v34[8] = v40;
  v41 = *(v3 + 16);
  v34[1] = *v3;
  v34[2] = v41;
  v42 = *(v3 + 48);
  v34[3] = *(v3 + 32);
  v34[4] = v42;
  sub_243FB20A0(v3, v0 + 32);
  sub_243FB20A0(v3, v0 + 32);
  v43 = sub_243FB20D8();
  v44 = MEMORY[0x277D839B0];
  sub_2440D25E0();

  sub_243F5EED4(v5, &qword_27EDC1B00);
  *(v0 + 32) = *(v6 - 144);
  sub_2440D2820();
  v45 = swift_allocObject();
  v46 = *(v3 + 208);
  v45[13] = *(v3 + 192);
  v45[14] = v46;
  v47 = *(v3 + 240);
  v45[15] = *(v3 + 224);
  v45[16] = v47;
  v48 = *(v3 + 144);
  v45[9] = *(v3 + 128);
  v45[10] = v48;
  v49 = *(v3 + 176);
  v45[11] = *(v3 + 160);
  v45[12] = v49;
  v50 = *(v3 + 80);
  v45[5] = *(v3 + 64);
  v45[6] = v50;
  v51 = *(v3 + 112);
  v45[7] = *(v3 + 96);
  v45[8] = v51;
  v52 = *(v3 + 16);
  v45[1] = *v3;
  v45[2] = v52;
  v53 = *(v3 + 48);
  v45[3] = *(v3 + 32);
  v45[4] = v53;
  sub_243FB20A0(v3, v0 + 32);
  *(v0 + 32) = v2;
  *(v0 + 40) = v44;
  *(v0 + 48) = v43;
  *(v0 + 56) = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = *(v0 + 8);
  sub_2440CC638(v6 - 152, sub_243FB2334, v45, v55, MEMORY[0x277D839F8], OpaqueTypeConformance2, *(v0 + 24));

  return (*(*(v0 + 16) + 8))(v4, v55);
}

void sub_243FB0D18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B78) - 8;
  v3 = MEMORY[0x28223BE20](v18);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B80);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B88);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v17 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = a1[14];
  v10 = a1[15];
  v12 = a1[16];
  v11 = a1[17];

  sub_243F4E2F4();
  sub_243FAE940(v9, v10, v12, v11, v21);
  v13 = sub_2440D2230();
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v25 = 0;
  v16 = swift_getKeyPath();
  v21[6] = KeyPath;
  v21[7] = v13;
  v21[8] = v15;
  v21[9] = 3;
  v22 = 0;
  v23 = v16;
  v24 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B90);
  sub_243FB28C4();
  sub_24408F1D8();
}

uint64_t sub_243FB0F4C()
{
  v8 = *(v0 + 112);
  *(v7 - 128) = *(v0 + 96);
  *(v7 - 112) = v8;
  *(v7 - 96) = *(v0 + 128);
  v9 = *(v0 + 48);
  *(v7 - 192) = *(v0 + 32);
  *(v7 - 176) = v9;
  v10 = *(v0 + 80);
  *(v7 - 160) = *(v0 + 64);
  *(v7 - 144) = v10;
  sub_243F5EED4(v7 - 192, v4);
  v11 = sub_2440D26C0();
  KeyPath = swift_getKeyPath();
  v13 = (v3 + *(v2 + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  sub_243FB2A34();
  sub_2440D24E0();
  sub_243F5EED4(v3, &qword_27EDC1B80);
  *v5 = sub_2440D1B30();
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BB8);
  sub_243FB1184(v6, v5 + *(v14 + 44));
  v15 = swift_allocObject();
  v16 = *(v6 + 208);
  *(v15 + 13) = *(v6 + 192);
  *(v15 + 14) = v16;
  v17 = *(v6 + 240);
  *(v15 + 15) = *(v6 + 224);
  *(v15 + 16) = v17;
  v18 = *(v6 + 144);
  *(v15 + 9) = *(v6 + 128);
  *(v15 + 10) = v18;
  v19 = *(v6 + 176);
  *(v15 + 11) = *(v6 + 160);
  *(v15 + 12) = v19;
  v20 = *(v6 + 80);
  *(v15 + 5) = *(v6 + 64);
  *(v15 + 6) = v20;
  v21 = *(v6 + 112);
  *(v15 + 7) = *(v6 + 96);
  *(v15 + 8) = v21;
  v22 = *(v6 + 16);
  *(v15 + 1) = *v6;
  *(v15 + 2) = v22;
  v23 = *(v6 + 48);
  *(v15 + 3) = *(v6 + 32);
  *(v15 + 4) = v23;
  sub_243FB20A0(v6, v0 + 32);
  v24 = sub_2440D2B00();
  v25 = *v0;
  v26 = (v5 + *(*(v0 + 8) + 44));
  *v26 = sub_243FB2BD0;
  v26[1] = v15;
  v26[2] = v24;
  v26[3] = v27;
  sub_243FB2BD8(v1, v25);
  v28 = *(v0 + 16);
  sub_243F5F574(v5, v28, &qword_27EDC1B78);
  v29 = *(v0 + 24);
  sub_243FB2BD8(v25, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BC0);
  sub_243F5F574(v28, v29 + *(v30 + 48), &qword_27EDC1B78);
  sub_243F5EED4(v5, &qword_27EDC1B78);
  sub_243F5EED4(v1, &qword_27EDC1B88);
  sub_243F5EED4(v28, &qword_27EDC1B78);
  return sub_243F5EED4(v25, &qword_27EDC1B88);
}

uint64_t sub_243FB1184@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BC8);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v103 = &v93 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BD0);
  v4 = MEMORY[0x28223BE20](v100);
  v102 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v111 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BD8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v108 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v93 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BE0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v105 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v101 = &v93 - v18;
  MEMORY[0x28223BE20](v17);
  v112 = &v93 - v19;
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[5];
  v96 = a1[4];
  v98 = a1;
  v104 = v22;
  *&v137[0] = v20;
  *(&v137[0] + 1) = v21;
  v23 = sub_243F4EF64();

  v97 = v23;
  v24 = sub_2440D2310();
  v26 = v25;
  v28 = v27;
  sub_244071478();
  sub_2440D21B0();
  v29 = sub_2440D2170();
  v30 = *(v29 - 8);
  v94 = *(v30 + 56);
  v95 = v29;
  v93 = v30 + 56;
  v94(v13, 1, 1);
  sub_2440D21C0();
  v99 = v13;
  sub_243F5EED4(v13, &qword_27EDC1B60);
  v31 = sub_2440D22E0();
  v33 = v32;
  LOBYTE(v13) = v34;
  v36 = v35;

  sub_243F62C68(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v39 = v13 & 1;
  v40 = v104;
  LOBYTE(v137[0]) = v39;
  LOBYTE(v125) = 0;
  if (v104)
  {
    sub_2440D2B20();
  }

  else
  {
    sub_2440D2B00();
  }

  sub_2440D18E0();
  *&v125 = v31;
  *(&v125 + 1) = v33;
  LOBYTE(v126) = v39;
  *(&v126 + 1) = v36;
  *&v127 = KeyPath;
  *(&v127 + 1) = 2;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = v38;
  *&v129 = 0x3FE0000000000000;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BE8);
  v42 = sub_243FB2E50();
  sub_2440D24E0();
  v137[8] = v133;
  v137[9] = v134;
  v137[10] = v135;
  v138 = v136;
  v137[4] = v129;
  v137[5] = v130;
  v137[6] = v131;
  v137[7] = v132;
  v137[0] = v125;
  v137[1] = v126;
  v137[2] = v127;
  v137[3] = v128;
  sub_243F5EED4(v137, &qword_27EDC1BE8);
  if (v40)
  {
    v43 = v111;
    sub_2440D29A0();
    v125 = *(v98 + 15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2820();
    sub_2440D2B00();
    sub_2440D1560();
    v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C00) + 36));
    v45 = v43;
    v46 = v140;
    *v44 = v139;
    v44[1] = v46;
    v44[2] = v141;
    sub_2440D2670();
    v47 = sub_2440D26B0();

    v48 = sub_2440D20B0();
    v49 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C08) + 36);
    *v49 = v47;
    *(v49 + 8) = v48;
    v50 = sub_2440D20A0();
    sub_2440D13D0();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C10) + 36);
    *v59 = v50;
    *(v59 + 8) = v52;
    *(v59 + 16) = v54;
    *(v59 + 24) = v56;
    *(v59 + 32) = v58;
    *(v59 + 40) = 0;
    v60 = sub_2440D2110();
    sub_2440D13D0();
    v61 = v45 + *(v100 + 36);
    *v61 = v60;
    *(v61 + 8) = v62;
    *(v61 + 16) = v63;
    *(v61 + 24) = v64;
    *(v61 + 32) = v65;
    *(v61 + 40) = 0;
    *&v125 = v96;
    *(&v125 + 1) = v40;

    v66 = sub_2440D2310();
    v68 = v67;
    v70 = v69;
    v104 = v41;
    sub_244071478();
    sub_2440D21B0();
    v71 = v99;
    (v94)(v99, 1, 1, v95);
    sub_2440D21C0();
    sub_243F5EED4(v71, &qword_27EDC1B60);
    v72 = sub_2440D22E0();
    v74 = v73;
    v100 = v42;
    v76 = v75;
    v78 = v77;

    sub_243F62C68(v66, v68, v70 & 1);

    v79 = swift_getKeyPath();
    v80 = swift_getKeyPath();
    v76 &= 1u;
    LOBYTE(v125) = v76;
    LOBYTE(v113) = 0;
    sub_2440D2B10();
    sub_2440D18E0();
    *&v113 = v72;
    *(&v113 + 1) = v74;
    LOBYTE(v114) = v76;
    *(&v114 + 1) = v78;
    *&v115 = v79;
    *(&v115 + 1) = 2;
    LOBYTE(v116) = 0;
    *(&v116 + 1) = v80;
    *&v117 = 0x3FE0000000000000;
    v81 = v101;
    sub_2440D24E0();
    v133 = v121;
    v134 = v122;
    v135 = v123;
    v136 = v124;
    v129 = v117;
    v130 = v118;
    v131 = v119;
    v132 = v120;
    v125 = v113;
    v126 = v114;
    v127 = v115;
    v128 = v116;
    sub_243F5EED4(&v125, &qword_27EDC1BE8);
    v82 = v111;
    v83 = v102;
    sub_243F5F574(v111, v102, &qword_27EDC1BD0);
    v84 = v105;
    sub_243F5F574(v81, v105, &qword_27EDC1BE0);
    v85 = v103;
    sub_243F5F574(v83, v103, &qword_27EDC1BD0);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C18);
    sub_243F5F574(v84, v85 + *(v86 + 48), &qword_27EDC1BE0);
    sub_243F5EED4(v81, &qword_27EDC1BE0);
    sub_243F5EED4(v82, &qword_27EDC1BD0);
    sub_243F5EED4(v84, &qword_27EDC1BE0);
    sub_243F5EED4(v83, &qword_27EDC1BD0);
    v87 = v106;
    sub_243FB2EDC(v85, v106);
    (*(v107 + 56))(v87, 0, 1, v109);
  }

  else
  {
    v87 = v106;
    (*(v107 + 56))(v106, 1, 1, v109);
    v84 = v105;
  }

  v88 = v112;
  sub_243F5F574(v112, v84, &qword_27EDC1BE0);
  v89 = v108;
  sub_243F5F574(v87, v108, &qword_27EDC1BD8);
  v90 = v110;
  sub_243F5F574(v84, v110, &qword_27EDC1BE0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BF8);
  sub_243F5F574(v89, v90 + *(v91 + 48), &qword_27EDC1BD8);
  sub_243F5EED4(v87, &qword_27EDC1BD8);
  sub_243F5EED4(v88, &qword_27EDC1BE0);
  sub_243F5EED4(v89, &qword_27EDC1BD8);
  return sub_243F5EED4(v84, &qword_27EDC1BE0);
}

uint64_t sub_243FB1C28@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v5 = sub_2440D1670();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_2440D3390();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  sub_2440D3360();
  sub_243FB20A0(a2, &v26);
  v12 = sub_2440D3350();
  v13 = (*(v6 + 80) + 288) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  v16 = a2[13];
  *(v14 + 224) = a2[12];
  *(v14 + 240) = v16;
  v17 = a2[15];
  *(v14 + 256) = a2[14];
  *(v14 + 272) = v17;
  v18 = a2[9];
  *(v14 + 160) = a2[8];
  *(v14 + 176) = v18;
  v19 = a2[11];
  *(v14 + 192) = a2[10];
  *(v14 + 208) = v19;
  v20 = a2[5];
  *(v14 + 96) = a2[4];
  *(v14 + 112) = v20;
  v21 = a2[7];
  *(v14 + 128) = a2[6];
  *(v14 + 144) = v21;
  v22 = a2[1];
  *(v14 + 32) = *a2;
  *(v14 + 48) = v22;
  v23 = a2[3];
  *(v14 + 64) = a2[2];
  *(v14 + 80) = v23;
  (*(v6 + 32))(v14 + v13, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_243F54830(0, 0, v10, &unk_2440DA930, v14);

  result = sub_2440D2690();
  *v25 = result;
  return result;
}

uint64_t sub_243FB1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_2440D3360();
  v5[7] = sub_2440D3350();
  v7 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243FB1F1C, v7, v6);
}

uint64_t sub_243FB1F1C()
{
  v1 = *(v0 + 40);

  sub_2440D1650();
  *(v0 + 16) = *(v1 + 240);
  *(v0 + 32) = v2 * 0.7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243FB2028()
{
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_243FB20D8()
{
  result = qword_27EDC1B30;
  if (!qword_27EDC1B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B00);
    sub_243FB2164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1B30);
  }

  return result;
}

unint64_t sub_243FB2164()
{
  result = qword_27EDC1B38;
  if (!qword_27EDC1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B28);
    sub_243FB21F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1B38);
  }

  return result;
}

unint64_t sub_243FB21F0()
{
  result = qword_27EDC1B40;
  if (!qword_27EDC1B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B20);
    sub_243FB227C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1B40);
  }

  return result;
}

unint64_t sub_243FB227C()
{
  result = qword_27EDC1B48;
  if (!qword_27EDC1B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B18);
    sub_243F5DD50(&qword_27EDC1B50, &qword_27EDC1B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1B48);
  }

  return result;
}

uint64_t sub_243FB2334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2830();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

double sub_243FB23F8@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2440D2810();
  sub_2440D2810();
  sub_2440D2810();
  result = v13;
  v7 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v7;
  *(a3 + 192) = *(a1 + 192);
  v8 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v8;
  v9 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v9;
  v10 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v10;
  v11 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v11;
  v12 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v12;
  *(a3 + 200) = a2;
  *(a3 + 208) = v13;
  *(a3 + 216) = v14;
  *(a3 + 224) = v13;
  *(a3 + 232) = v14;
  *(a3 + 240) = v13;
  *(a3 + 248) = v14;
  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_243FB25CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_243FB2614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FB26A8()
{
  result = qword_27EDC1B68;
  if (!qword_27EDC1B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B00);
    sub_243FB20D8();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1B68);
  }

  return result;
}

unint64_t sub_243FB28C4()
{
  result = qword_27EDC1B98;
  if (!qword_27EDC1B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B90);
    sub_243FB297C();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1B98);
  }

  return result;
}

unint64_t sub_243FB297C()
{
  result = qword_27EDC1BA0;
  if (!qword_27EDC1BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1BA8);
    sub_243F7C1F0();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1BA0);
  }

  return result;
}

unint64_t sub_243FB2A34()
{
  result = qword_27EDC1BB0;
  if (!qword_27EDC1BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1B90);
    sub_243FB28C4();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1BB0);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_243FB2BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FB2C48()
{
  v1 = sub_2440D1670();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 288) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_243FB2D84()
{
  v2 = *(sub_2440D1670() - 8);
  v3 = (*(v2 + 80) + 288) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5DE2C;

  return sub_243FB1E84(v4, v5, v6, v0 + 32, v0 + v3);
}

unint64_t sub_243FB2E50()
{
  result = qword_27EDC1BF0;
  if (!qword_27EDC1BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1BE8);
    sub_243F7C93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1BF0);
  }

  return result;
}

uint64_t sub_243FB2EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1BC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FB2F58()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_inhibitsVocalMessages;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243FB2F9C(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_inhibitsVocalMessages;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243FB304C()
{
  v0 = swift_allocObject();
  sub_243FB3084();
  return v0;
}

uint64_t sub_243FB3084()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_2440D0880();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D08A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = [objc_opt_self() sharedInstance];
  type metadata accessor for VoiceOverAnnounceObserver();
  *(v0 + 24) = sub_243F72074();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  sub_2440D0800();
  v13 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_synthesizerVoice;
  sub_2440D0800();
  sub_2440D0890();
  (*(v10 + 8))(v12, v9);
  sub_2440D0860();
  (*(v6 + 8))(v8, v5);
  v14 = sub_2440D2F80();

  v15 = [objc_opt_self() voiceWithLanguage_];

  *(v1 + v13) = v15;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_alwaysPlaySound) = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_inhibitsVocalMessages) = 0;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode) = 2;
  v16 = sub_243F4DFF4();
  sub_243F5F574(v16, v4, &qword_27EDC0A50);
  v17 = sub_2440D11E0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v19 = sub_2440D11C0();
    v20 = sub_2440D3490();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_243F48000, v19, v20, "AudioManager created", v21, 2u);
      MEMORY[0x245D58570](v21, -1, -1);
    }

    (*(v18 + 8))(v4, v17);
  }

  return v1;
}

uint64_t sub_243FB3444()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver_];

  v6 = sub_243F4DFF4();
  sub_243F5F574(v6, v4, &qword_27EDC0A50);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "AudioManager destroyed", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  sub_243F5EED4(v1 + 32, &qword_27EDC1C20);
  v12 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_locale;
  v13 = sub_2440D08A0();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  return v1;
}

uint64_t sub_243FB3698()
{
  sub_243FB3444();

  return swift_deallocClassInstance();
}

void sub_243FB36F0(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  type metadata accessor for AudioFactory();
  if ((sub_243FE869C(a1, a2) & 0x100000000) == 0)
  {
    v9 = sub_243F4DFF4();
    sub_243F5F574(v9, v8, &qword_27EDC0A50);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_243F5EED4(v8, &qword_27EDC0A50);
    }

    else
    {
      v12 = sub_2440D11C0();
      v13 = sub_2440D3490();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v24 = v3;
        v15 = v14;
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315138;
        v25 = a1;
        sub_243FB89F0();
        v17 = sub_2440D39C0();
        v19 = sub_243F4E6F8(v17, v18, &v26);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_243F48000, v12, v13, "playing sound: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x245D58570](v16, -1, -1);
        v20 = v15;
        v3 = v24;
        MEMORY[0x245D58570](v20, -1, -1);
      }

      (*(v11 + 8))(v8, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2440D5CF0;
    *(inited + 32) = sub_2440D2FB0();
    *(inited + 40) = v22;
    *(inited + 48) = *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_alwaysPlaySound);
    sub_243FB0630(inited);
    swift_setDeallocating();
    sub_243F5EED4(inited + 32, &qword_27EDC1AE8);
    v23 = sub_2440D2EA0();

    AudioServicesPlaySystemSoundWithOptions();
  }
}

uint64_t sub_243FB3A04(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = v3;
  *(v4 + 267) = a3;
  *(v4 + 280) = a1;
  v5 = sub_2440D08A0();
  *(v4 + 304) = v5;
  *(v4 + 312) = *(v5 - 8);
  *(v4 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243FB3B1C, 0, 0);
}

uint64_t sub_243FB3B1C()
{
  v66 = v0;
  v1 = *(v0 + 296);
  swift_beginAccess();
  sub_243F5F574(v1 + 32, v0 + 16, &qword_27EDC1C20);
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C38);
    type metadata accessor for VoiceSynthAnnounce(0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 272);
      if (sub_243FE74CC(*(v2 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_id), *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_id + 8), *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_id + 16), *(v0 + 280), *(v0 + 288), *(v0 + 267)))
      {
        *(v0 + 265) = (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
        *(v0 + 266) = 3;
        sub_243F734E0();
        if ((sub_2440D2F50() & 1) == 0)
        {
          v43 = *(v0 + 344);
          v44 = sub_243F4DFF4();
          sub_243F5F574(v44, v43, &qword_27EDC0A50);
          v45 = sub_2440D11E0();
          v46 = *(v45 - 8);
          v47 = (*(v46 + 48))(v43, 1, v45);
          v48 = *(v0 + 344);
          if (v47 == 1)
          {

            sub_243F5EED4(v48, &qword_27EDC0A50);
          }

          else
          {
            v49 = sub_2440D11C0();
            v50 = sub_2440D3490();
            if (os_log_type_enabled(v49, v50))
            {
              v64 = *(v0 + 267);
              v51 = *(v0 + 280);
              v52 = *(v0 + 288);
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v65 = v54;
              *v53 = 136315138;
              *(v0 + 248) = v51;
              *(v0 + 256) = v52;
              *(v0 + 264) = v64;
              sub_243F6C880();
              v55 = sub_2440D39C0();
              v57 = sub_243F4E6F8(v55, v56, &v65);

              *(v53 + 4) = v57;
              _os_log_impl(&dword_243F48000, v49, v50, "vocal message already playing: %s", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v54);
              MEMORY[0x245D58570](v54, -1, -1);
              MEMORY[0x245D58570](v53, -1, -1);
            }

            (*(v46 + 8))(*(v0 + 344), v45);
          }

          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
  }

  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 267);
  type metadata accessor for AudioFactory();
  v7 = (*(*v4 + 240))();
  *(v0 + 352) = sub_243FE8C98(v5, v3, v6, v7 & 1);
  *(v0 + 360) = v8;
  if (v8)
  {
    *(v0 + 368) = v9;
    sub_243F5F574(v1 + 32, v0 + 56, &qword_27EDC1C20);
    if (*(v0 + 80))
    {
      sub_243F5D774(v0 + 56, v0 + 136);
      sub_243F5EED4(v0 + 56, &qword_27EDC1C20);
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v10);
      v61 = (*(v11 + 16) + **(v11 + 16));
      v12 = swift_task_alloc();
      *(v0 + 376) = v12;
      *v12 = v0;
      v12[1] = sub_243FB4410;

      return v61(v10, v11);
    }

    else
    {
      sub_243F5EED4(v0 + 56, &qword_27EDC1C20);
      v14 = *(v0 + 368);
      v59 = *(v0 + 352);
      v60 = *(v0 + 360);
      v62 = *(v0 + 336);
      v15 = *(v0 + 312);
      v16 = *(v0 + 320);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      v20 = *(v0 + 280);
      v19 = *(v0 + 288);
      v21 = *(v0 + 267);
      v22 = type metadata accessor for VoiceSynthAnnounce(0);
      v23 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_locale;
      swift_beginAccess();
      (*(v15 + 16))(v16, v17 + v23, v18);
      v24 = v22;
      v25 = *(v17 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_synthesizerVoice);
      v26 = v25;
      v27 = sub_243F6C968(v20, v19, v21, v59, v60, v16, v25, v14);
      *(v0 + 384) = v27;
      v28 = sub_243F4DFF4();
      *(v0 + 392) = v28;
      sub_243F5F574(v28, v62, &qword_27EDC0A50);
      v29 = sub_2440D11E0();
      *(v0 + 400) = v29;
      v30 = *(v29 - 8);
      *(v0 + 408) = v30;
      v31 = *(v30 + 48);
      *(v0 + 416) = v31;
      *(v0 + 424) = (v30 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v31(v62, 1, v29) == 1)
      {
        sub_243F5EED4(*(v0 + 336), &qword_27EDC0A50);
      }

      else
      {
        v32 = v27;
        v33 = sub_2440D11C0();
        v34 = sub_2440D3490();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          *(v35 + 4) = v32;
          *v36 = v32;
          v37 = v32;
          _os_log_impl(&dword_243F48000, v33, v34, "start vocal message: %@", v35, 0xCu);
          sub_243F5EED4(v36, &qword_27EDC0418);
          MEMORY[0x245D58570](v36, -1, -1);
          MEMORY[0x245D58570](v35, -1, -1);
        }

        v38 = *(v0 + 336);

        (*(v30 + 8))(v38, v29);
      }

      v39 = *(v0 + 296);
      *(v0 + 120) = v24;
      *(v0 + 128) = &off_285773C60;
      *(v0 + 96) = v27;
      swift_beginAccess();
      v40 = v27;
      sub_243FB8A44(v0 + 96, v39 + 32);
      swift_endAccess();
      v41 = *((*MEMORY[0x277D85000] & *v40) + 0x140);
      v63 = (v41 + *v41);
      v42 = swift_task_alloc();
      *(v0 + 432) = v42;
      *v42 = v0;
      v42[1] = sub_243FB48F8;

      return v63();
    }
  }

LABEL_25:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_243FB4410()
{

  return MEMORY[0x2822009F8](sub_243FB450C, 0, 0);
}

uint64_t sub_243FB450C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  v1 = *(v0 + 368);
  v31 = *(v0 + 352);
  v32 = *(v0 + 360);
  v33 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 267);
  v9 = type metadata accessor for VoiceSynthAnnounce(0);
  v10 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_locale;
  swift_beginAccess();
  (*(v2 + 16))(v3, v4 + v10, v5);
  v11 = v9;
  v12 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_synthesizerVoice);
  v13 = v12;
  v14 = sub_243F6C968(v7, v6, v8, v31, v32, v3, v12, v1);
  *(v0 + 384) = v14;
  v15 = sub_243F4DFF4();
  *(v0 + 392) = v15;
  sub_243F5F574(v15, v33, &qword_27EDC0A50);
  v16 = sub_2440D11E0();
  *(v0 + 400) = v16;
  v17 = *(v16 - 8);
  *(v0 + 408) = v17;
  v18 = *(v17 + 48);
  *(v0 + 416) = v18;
  *(v0 + 424) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v33, 1, v16) == 1)
  {
    sub_243F5EED4(*(v0 + 336), &qword_27EDC0A50);
  }

  else
  {
    v19 = v14;
    v20 = sub_2440D11C0();
    v21 = sub_2440D3490();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_243F48000, v20, v21, "start vocal message: %@", v22, 0xCu);
      sub_243F5EED4(v23, &qword_27EDC0418);
      MEMORY[0x245D58570](v23, -1, -1);
      MEMORY[0x245D58570](v22, -1, -1);
    }

    v25 = *(v0 + 336);

    (*(v17 + 8))(v25, v16);
  }

  v26 = *(v0 + 296);
  *(v0 + 120) = v11;
  *(v0 + 128) = &off_285773C60;
  *(v0 + 96) = v14;
  swift_beginAccess();
  v27 = v14;
  sub_243FB8A44(v0 + 96, v26 + 32);
  swift_endAccess();
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0x140);
  v34 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v0 + 432) = v29;
  *v29 = v0;
  v29[1] = sub_243FB48F8;

  return v34();
}

uint64_t sub_243FB48F8()
{

  return MEMORY[0x2822009F8](sub_243FB49F4, 0, 0);
}

uint64_t sub_243FB49F4()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[41];
  sub_243F5F574(v0[49], v3, &qword_27EDC0A50);
  v4 = v1(v3, 1, v2);
  v5 = v0[48];
  v6 = v0[41];
  if (v4 == 1)
  {

    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v7 = v5;
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[48];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&dword_243F48000, v8, v9, "end vocal message: %@", v12, 0xCu);
      sub_243F5EED4(v13, &qword_27EDC0418);
      MEMORY[0x245D58570](v13, -1, -1);
      MEMORY[0x245D58570](v12, -1, -1);
    }

    else
    {
      v14 = v8;
      v8 = v0[48];
    }

    (*(v0[51] + 8))(v0[41], v0[50]);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_243FB4BDC(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 296) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243FB4C88, 0, 0);
}

uint64_t sub_243FB4C88()
{
  v1 = *(v0 + 296);
  type metadata accessor for AudioFactory();
  *(v0 + 208) = sub_243FE922C(v1);
  *(v0 + 216) = v2;
  if (v2)
  {
    v4 = *(v0 + 184);
    *(v0 + 224) = v3;
    swift_beginAccess();
    sub_243F5F574(v4 + 32, v0 + 16, &qword_27EDC1C20);
    if (*(v0 + 40))
    {
      sub_243F5D774(v0 + 16, v0 + 96);
      sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
      v5 = *(v0 + 120);
      v6 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
      v33 = (*(v6 + 16) + **(v6 + 16));
      v7 = swift_task_alloc();
      *(v0 + 232) = v7;
      *v7 = v0;
      v7[1] = sub_243FB51F4;

      return v33(v5, v6);
    }

    else
    {
      sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
      v10 = *(v0 + 224);
      v12 = *(v0 + 208);
      v11 = *(v0 + 216);
      v13 = *(v0 + 200);
      v14 = *(v0 + 296);
      v15 = type metadata accessor for VoiceOverAnnounce(0);

      v17 = sub_243F6F2F0(v16, v14, v12, v11, v10);
      *(v0 + 240) = v17;
      v18 = sub_243F4DFF4();
      *(v0 + 248) = v18;
      sub_243F5F574(v18, v13, &qword_27EDC0A50);
      v19 = sub_2440D11E0();
      *(v0 + 256) = v19;
      v20 = *(v19 - 8);
      *(v0 + 264) = v20;
      v21 = *(v20 + 48);
      *(v0 + 272) = v21;
      *(v0 + 280) = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v21(v13, 1, v19) == 1)
      {
        sub_243F5EED4(*(v0 + 200), &qword_27EDC0A50);
      }

      else
      {
        v22 = v17;
        v23 = sub_2440D11C0();
        v24 = sub_2440D3490();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412290;
          *(v25 + 4) = v22;
          *v26 = v22;
          v27 = v22;
          _os_log_impl(&dword_243F48000, v23, v24, "start VO message: %@", v25, 0xCu);
          sub_243F5EED4(v26, &qword_27EDC0418);
          MEMORY[0x245D58570](v26, -1, -1);
          MEMORY[0x245D58570](v25, -1, -1);
        }

        v28 = *(v0 + 200);

        (*(v20 + 8))(v28, v19);
      }

      v29 = *(v0 + 184);
      *(v0 + 80) = v15;
      *(v0 + 88) = &off_285773C78;
      *(v0 + 56) = v17;
      swift_beginAccess();
      v30 = v17;
      sub_243FB8A44(v0 + 56, v29 + 32);
      swift_endAccess();
      v31 = *((*MEMORY[0x277D85000] & *v30) + 0xE0);
      v34 = (v31 + *v31);
      v32 = swift_task_alloc();
      *(v0 + 288) = v32;
      *v32 = v0;
      v32[1] = sub_243FB5664;

      return v34();
    }
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_243FB51F4()
{

  return MEMORY[0x2822009F8](sub_243FB52F0, 0, 0);
}

uint64_t sub_243FB52F0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 296);
  v6 = type metadata accessor for VoiceOverAnnounce(0);

  v8 = sub_243F6F2F0(v7, v5, v3, v2, v1);
  *(v0 + 240) = v8;
  v9 = sub_243F4DFF4();
  *(v0 + 248) = v9;
  sub_243F5F574(v9, v4, &qword_27EDC0A50);
  v10 = sub_2440D11E0();
  *(v0 + 256) = v10;
  v11 = *(v10 - 8);
  *(v0 + 264) = v11;
  v12 = *(v11 + 48);
  *(v0 + 272) = v12;
  *(v0 + 280) = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v12(v4, 1, v10) == 1)
  {
    sub_243F5EED4(*(v0 + 200), &qword_27EDC0A50);
  }

  else
  {
    v13 = v8;
    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_243F48000, v14, v15, "start VO message: %@", v16, 0xCu);
      sub_243F5EED4(v17, &qword_27EDC0418);
      MEMORY[0x245D58570](v17, -1, -1);
      MEMORY[0x245D58570](v16, -1, -1);
    }

    v19 = *(v0 + 200);

    (*(v11 + 8))(v19, v10);
  }

  v20 = *(v0 + 184);
  *(v0 + 80) = v6;
  *(v0 + 88) = &off_285773C78;
  *(v0 + 56) = v8;
  swift_beginAccess();
  v21 = v8;
  sub_243FB8A44(v0 + 56, v20 + 32);
  swift_endAccess();
  v22 = *((*MEMORY[0x277D85000] & *v21) + 0xE0);
  v25 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 288) = v23;
  *v23 = v0;
  v23[1] = sub_243FB5664;

  return v25();
}

uint64_t sub_243FB5664()
{

  return MEMORY[0x2822009F8](sub_243FB5760, 0, 0);
}

uint64_t sub_243FB5760()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[24];
  sub_243F5F574(v0[31], v3, &qword_27EDC0A50);
  v4 = v1(v3, 1, v2);
  v5 = v0[30];
  v6 = v0[24];
  if (v4 == 1)
  {

    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v7 = v5;
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[30];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&dword_243F48000, v8, v9, "end VO message: %@", v12, 0xCu);
      sub_243F5EED4(v13, &qword_27EDC0418);
      MEMORY[0x245D58570](v13, -1, -1);
      MEMORY[0x245D58570](v12, -1, -1);
    }

    else
    {
      v14 = v8;
      v8 = v0[30];
    }

    (*(v0[33] + 8))(v0[24], v0[32]);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_243FB5934()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_243F4DFF4();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v11 = sub_243F4E2F4();
    v12 = sub_243F4E2FC();
    sub_243F4E308(v11 & 1, v1, 0x79616C50706F7473, 0xED00002928676E69, v12, v13);

    (*(v10 + 8))(v7, v9);
  }

  v14 = sub_2440D3390();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_243F54830(0, 0, v4, &unk_2440DA9E0, v15);
}

uint64_t sub_243FB5BB4()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_243F5F574(v1 + 32, v0 + 16, &qword_27EDC1C20);
  if (*(v0 + 40))
  {
    sub_243F5D774(v0 + 16, v0 + 96);
    sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_243FB5DC4;

    return v8(v2, v3);
  }

  else
  {
    sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
    v6 = *(v0 + 184);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_243FB8A44(v0 + 56, v6 + 32);
    swift_endAccess();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_243FB5DC4()
{

  return MEMORY[0x2822009F8](sub_243FB5EC0, 0, 0);
}

uint64_t sub_243FB5EC0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  v1 = *(v0 + 184);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_243FB8A44(v0 + 56, v1 + 32);
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243FB5F60(int a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  LODWORD(v61) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v51 - v5;
  v6 = sub_2440D08A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2440D0880();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v59 = sub_243F4DFF4();
  sub_243F5F574(v59, v16, &qword_27EDC0A50);
  v17 = sub_2440D11E0();
  v18 = *(v17 - 8);
  v57 = *(v18 + 48);
  v19 = v57(v16, 1, v17);
  v56 = v18;
  if (v19 == 1)
  {
    sub_243F5EED4(v16, &qword_27EDC0A50);
  }

  else
  {
    v53 = v7;
    v54 = v3;
    v52 = v6;
    v20 = sub_243F4E2F4();
    v21 = sub_243F4E2FC();
    v22 = v20 & 1;
    v6 = v52;
    v23 = v53;
    v3 = v54;
    sub_243F4E308(v22, v54, 0xD000000000000022, 0x80000002440EA990, v21, v24);
    v7 = v23;

    (*(v18 + 8))(v16, v17);
  }

  *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_alwaysPlaySound) = v61 & 1;
  v25 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_locale;
  swift_beginAccess();
  (*(v7 + 24))(v3 + v25, v62, v6);
  swift_endAccess();
  sub_2440D0890();
  sub_2440D0860();
  v26 = v7;
  (*(v58 + 8))(v10, v60);
  v27 = sub_2440D2F80();

  v28 = [objc_opt_self() voiceWithLanguage_];

  v29 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_synthesizerVoice;
  v30 = *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_synthesizerVoice);
  *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_synthesizerVoice) = v28;

  sub_243F5F574(v59, v14, &qword_27EDC0A50);
  if (v57(v14, 1, v17) == 1)
  {
    sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v62 = v17;

    v31 = sub_2440D11C0();
    v32 = sub_2440D3490();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v61 = v14;
      v34 = v33;
      v35 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64[0] = v60;
      *v34 = 138412546;
      v36 = *(v3 + v29);
      *(v34 + 4) = v36;
      *v35 = v36;
      *(v34 + 12) = 2080;
      v37 = v3 + v25;
      v38 = v55;
      (*(v26 + 16))(v55, v37, v6);
      sub_243FB9044(&qword_27EDC1C40, MEMORY[0x277CC9788]);
      v39 = v36;
      v40 = sub_2440D39C0();
      v42 = v41;
      (*(v26 + 8))(v38, v6);
      v43 = sub_243F4E6F8(v40, v42, v64);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_243F48000, v31, v32, "selected voice = %@ from locale = %s", v34, 0x16u);
      sub_243F5EED4(v35, &qword_27EDC0418);
      MEMORY[0x245D58570](v35, -1, -1);
      v44 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x245D58570](v44, -1, -1);
      v45 = v34;
      v14 = v61;
      MEMORY[0x245D58570](v45, -1, -1);
    }

    (*(v56 + 8))(v14, v62);
  }

  v46 = sub_2440D3390();
  v47 = v63;
  (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v3;

  sub_243F54830(0, 0, v47, &unk_2440DA9F0, v48);

  return (*(*v3 + 344))(v49);
}

uint64_t sub_243FB668C()
{
  v1 = *(v0[2] + 24);
  v0[3] = v1;
  v2 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0x39A2000000000000;
  v0[4] = *(*v1 + 168);
  v0[5] = v2;
  return MEMORY[0x2822009F8](sub_243FB66CC, v1, 0);
}

uint64_t sub_243FB66CC()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243FB6730()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_243F4DFF4();
  sub_243F5F574(v7, v6, &qword_27EDC0A50);
  v8 = sub_2440D11E0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v10 = sub_243F4E2F4();
    v11 = sub_243F4E2FC();
    sub_243F4E308(v10 & 1, v0, 0x2870756E61656C63, 0xE900000000000029, v11, v12);

    (*(v9 + 8))(v6, v8);
  }

  v13 = sub_2440D3390();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v0;

  sub_243F54830(0, 0, v3, &unk_2440DAA00, v14);

  return (*(*v0 + 360))(v15);
}

uint64_t sub_243FB69E8()
{
  v1 = *(v0[23] + 24);
  v0[24] = v1;
  v2 = (*v1 + 176) & 0xFFFFFFFFFFFFLL | 0x8253000000000000;
  v0[25] = *(*v1 + 176);
  v0[26] = v2;
  return MEMORY[0x2822009F8](sub_243FB6A28, v1, 0);
}

uint64_t sub_243FB6A28()
{
  (*(v0 + 200))();

  return MEMORY[0x2822009F8](sub_243FB6A94, 0, 0);
}

uint64_t sub_243FB6A94()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_243F5F574(v1 + 32, v0 + 16, &qword_27EDC1C20);
  if (*(v0 + 40))
  {
    sub_243F5D774(v0 + 16, v0 + 96);
    sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = sub_243FB6CA4;

    return v8(v2, v3);
  }

  else
  {
    sub_243F5EED4(v0 + 16, &qword_27EDC1C20);
    v6 = *(v0 + 184);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_243FB8A44(v0 + 56, v6 + 32);
    swift_endAccess();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_243FB6CA4()
{

  return MEMORY[0x2822009F8](sub_243FB908C, 0, 0);
}

uint64_t sub_243FB6DA0()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v43[-v6];
  MEMORY[0x28223BE20](v5);
  v9 = &v43[-v8];
  v10 = *(v0 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C48);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2440D5CF0;
    v12 = *MEMORY[0x277D26D58];
    *(v11 + 32) = *MEMORY[0x277D26D58];
    type metadata accessor for Name();
    v13 = v10;
    v14 = v12;
    v15 = sub_2440D3210();

    v16 = *MEMORY[0x277D26DD0];
    v44[0] = 0;
    LODWORD(v12) = [v13 setAttribute:v15 forKey:v16 error:v44];

    v17 = v44[0];
    if (v12)
    {
      v18 = objc_opt_self();
      v19 = v17;
      v20 = [v18 defaultCenter];
      [v20 addObserver:v0 selector:sel_onSilentModeSwitch_ name:v14 object:v13];

      v21 = sub_243F4DFF4();
      sub_243F5F574(v21, v9, &qword_27EDC0A50);
      v22 = sub_2440D11E0();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v9, 1, v22) == 1)
      {

        v24 = v9;
        return sub_243F5EED4(v24, &qword_27EDC0A50);
      }

      v37 = sub_2440D11C0();
      v38 = sub_2440D3460();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_243F48000, v37, v38, "AudioManager | Observing AVSystemController for silent switch change notifications", v39, 2u);
        MEMORY[0x245D58570](v39, -1, -1);
      }

      return (*(v23 + 8))(v9, v22);
    }

    else
    {
      v28 = v44[0];
      v29 = sub_2440D0550();

      swift_willThrow();
      v30 = sub_243F4DFF4();
      sub_243F5F574(v30, v4, &qword_27EDC0A50);
      v31 = sub_2440D11E0();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v4, 1, v31) == 1)
      {

        v24 = v4;
        return sub_243F5EED4(v24, &qword_27EDC0A50);
      }

      v40 = sub_2440D11C0();
      v41 = sub_2440D3470();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_243F48000, v40, v41, "AudioManager | Failed to set attribute on avSystemController", v42, 2u);
        MEMORY[0x245D58570](v42, -1, -1);
      }

      return (*(v32 + 8))(v4, v31);
    }
  }

  else
  {
    v25 = sub_243F4DFF4();
    sub_243F5F574(v25, v7, &qword_27EDC0A50);
    v26 = sub_2440D11E0();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v7, 1, v26) == 1)
    {
      v24 = v7;
      return sub_243F5EED4(v24, &qword_27EDC0A50);
    }

    v34 = sub_2440D11C0();
    v35 = sub_2440D3470();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_243F48000, v34, v35, "avSystemController is nil", v36, 2u);
      MEMORY[0x245D58570](v36, -1, -1);
    }

    return (*(v27 + 8))(v7, v26);
  }
}

uint64_t sub_243FB7334(unsigned __int8 a1)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v59 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode);
  if (v13 != 2 && ((v13 ^ a1) & 1) == 0)
  {
    return result;
  }

  v62 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode;
  v64 = sub_243F4DFF4();
  sub_243F5F574(v64, v12, &qword_27EDC0A50);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  v17 = v16 + 48;
  v65 = *(v16 + 48);
  if (v65(v12, 1, v15) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
  }

  else
  {
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    v63 = v16 + 48;
    sub_243F4E308(v18 & 1, v1, 0xD00000000000001BLL, 0x80000002440EA9C0, v19, v20);
    v17 = v63;

    (*(v16 + 8))(v12, v15);
  }

  v21 = [objc_opt_self() sharedInstance];
  v22 = v21;
  if ((a1 & 1) == 0)
  {
    v33 = v15;
    v60 = v16;
    v34 = [v21 currentRoute];
    v35 = [v34 outputs];

    sub_243FB8D98();
    v36 = sub_2440D3220();

    if (v36 >> 62)
    {
      v15 = v33;
      if (sub_2440D38E0())
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = v33;
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        v61 = v15;
        v63 = v17;
        if ((v36 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x245D57760](0, v36);
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v37 = *(v36 + 32);
        }

        v38 = v37;

        v39 = [v38 portType];

        v40 = sub_2440D2FB0();
        v42 = v41;
        if (v40 == sub_2440D2FB0() && v42 == v43)
        {
        }

        else
        {
          v46 = sub_2440D3A10();

          if ((v46 & 1) == 0)
          {
            v48 = 1;
            v15 = v61;
            goto LABEL_29;
          }
        }

        v47 = (*(*v1 + 368))(v44);
        v15 = v61;
        if ((v47 & 1) == 0 || *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_alwaysPlaySound) == 1)
        {
          v48 = 3;
LABEL_29:
          v49 = *MEMORY[0x277CB8020];
          v50 = *MEMORY[0x277CB80A8];
          v66[0] = 0;
          v51 = [v22 setCategory:v49 mode:v50 options:v48 error:v66];
          v30 = v66[0];
          if (v51)
          {
            goto LABEL_30;
          }

          v55 = v66[0];
          v32 = sub_2440D0550();

          swift_willThrow();
          v16 = v60;
          goto LABEL_32;
        }

LABEL_28:
        v48 = 1;
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  v23 = *MEMORY[0x277CB8028];
  v24 = *MEMORY[0x277CB80A8];
  v66[0] = 0;
  v25 = [v21 setCategory:v23 mode:v24 options:0 error:v66];
  v26 = v66[0];
  if (v25)
  {
    v61 = v15;
    v27 = v16;
    v66[0] = 0;
    v28 = v26;
    v29 = [v22 overrideOutputAudioPort:1936747378 error:v66];
    v30 = v66[0];
    if (!v29)
    {
      v31 = v66[0];
      v32 = sub_2440D0550();

      swift_willThrow();
      v16 = v27;
      v15 = v61;
      goto LABEL_32;
    }

LABEL_30:
    v52 = v30;
    v53 = sub_2440D3390();
    (*(*(v53 - 8) + 56))(v5, 1, 1, v53);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v54[4] = v22;
    sub_243FB7C18(0, 0, v5, &unk_2440DAA18, v54);

    *(v1 + v62) = a1 & 1;
    return result;
  }

  v45 = v66[0];
  v32 = sub_2440D0550();

  swift_willThrow();
LABEL_32:

  sub_243F5F574(v64, v9, &qword_27EDC0A50);
  if (v65(v9, 1, v15) == 1)
  {

    return sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v56 = sub_2440D11C0();
    v57 = sub_2440D3470();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_243F48000, v56, v57, "Unable to configure audio session", v58, 2u);
      MEMORY[0x245D58570](v58, -1, -1);
    }

    return (*(v16 + 8))(v9, v15);
  }
}

uint64_t sub_243FB7A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;

  return MEMORY[0x2822009F8](sub_243FB7B0C, 0, 0);
}

uint64_t sub_243FB7B0C()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) setActive:1 withOptions:0 error:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v7 = *(v0 + 8);
    v3 = v2;
    v4 = v7;
  }

  else
  {
    v5 = v2;
    sub_2440D0550();

    swift_willThrow();
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_243FB7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_243F5F574(a3, v22 - v9, &unk_27EDC03E0);
  v11 = sub_2440D3390();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_243F5EED4(v10, &unk_27EDC03E0);
  }

  else
  {
    sub_2440D3380();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2440D3320();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2440D3060() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_243F5EED4(a3, &unk_27EDC03E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243F5EED4(a3, &unk_27EDC03E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_243FB7EC4()
{
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v33 - v6;
  v8 = OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode;
  if (v0[OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode] != 2)
  {
    v34 = v0;
    v9 = sub_243F4DFF4();
    sub_243F5F574(v9, v7, &qword_27EDC0A50);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v35 = v10;
    if (v12(v7, 1) == 1)
    {
      sub_243F5EED4(v7, &qword_27EDC0A50);
    }

    else
    {
      v33 = v4;
      v13 = sub_243F4E2F4();
      v14 = sub_243F4E2FC();
      v15 = v13 & 1;
      v16 = v35;
      v4 = v33;
      sub_243F4E308(v15, v34, 0xD000000000000015, 0x80000002440EA9E0, v14, v17);

      (*(v11 + 8))(v7, v16);
    }

    v18 = [objc_opt_self() sharedInstance];
    v36[0] = 0;
    v19 = [v18 setActive:0 withOptions:1 error:v36];

    v20 = v36[0];
    if (v19)
    {
      v34[v8] = 2;

      return v20;
    }

    else
    {
      v34 = v36[0];
      v21 = v36[0];
      v22 = sub_2440D0550();

      swift_willThrow();
      sub_243F5F574(v9, v4, &qword_27EDC0A50);
      if ((v12)(v4, 1, v35) == 1)
      {

        return sub_243F5EED4(v4, &qword_27EDC0A50);
      }

      else
      {
        v23 = v22;
        v24 = sub_2440D11C0();
        v25 = sub_2440D3470();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = v11;
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v36[0] = v28;
          *v27 = 136315138;
          swift_getErrorValue();
          v29 = sub_2440D3AB0();
          v31 = sub_243F4E6F8(v29, v30, v36);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_243F48000, v24, v25, "Unable to release audio session. Error: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x245D58570](v28, -1, -1);
          v32 = v27;
          v11 = v26;
          MEMORY[0x245D58570](v32, -1, -1);
        }

        else
        {
        }

        return (*(v11 + 8))(v4, v35);
      }
    }
  }

  return result;
}

id sub_243FB8320()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result getSilentMode];
  }

  return result;
}

uint64_t sub_243FB8348(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_243F4DFF4();
  sub_243F5F574(v6, v5, &qword_27EDC0A50);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    result = sub_243F5EED4(v5, &qword_27EDC0A50);
  }

  else
  {
    v10 = v1;
    v11 = a1;
    v12 = sub_2440D11C0();
    v13 = sub_2440D3490();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_243F48000, v12, v13, "Silent Switch notification: %@", v14, 0xCu);
      sub_243F5EED4(v15, &qword_27EDC0418);
      MEMORY[0x245D58570](v15, -1, -1);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    result = (*(v8 + 8))(v5, v7);
    v1 = v10;
  }

  v17 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode);
  if (v17 != 2 && (v17 & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI15AnnounceManager_audioMode) = 2;
    return (*(*v1 + 352))(0);
  }

  return result;
}

uint64_t sub_243FB85F8(uint64_t a1, id *a2)
{
  result = sub_2440D2F90();
  *a2 = 0;
  return result;
}

uint64_t sub_243FB8670(uint64_t a1, id *a2)
{
  v3 = sub_2440D2FA0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_243FB86F0@<X0>(uint64_t *a1@<X8>)
{
  sub_2440D2FB0();
  v2 = sub_2440D2F80();

  *a1 = v2;
  return result;
}

uint64_t sub_243FB8734@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2440D2F80();

  *a1 = v2;
  return result;
}

uint64_t sub_243FB877C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D2FB0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243FB87A8(uint64_t a1)
{
  v2 = sub_243FB9044(&qword_27EDC1C80, type metadata accessor for Name);
  v3 = sub_243FB9044(&qword_27EDC1C88, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_243FB8864()
{
  v0 = sub_2440D2FB0();
  v1 = MEMORY[0x245D57080](v0);

  return v1;
}

uint64_t sub_243FB88A0()
{
  sub_2440D2FB0();
  sub_2440D30B0();
}

uint64_t sub_243FB88F4()
{
  sub_2440D2FB0();
  sub_2440D3B20();
  sub_2440D30B0();
  v0 = sub_2440D3B50();

  return v0;
}

uint64_t sub_243FB8968()
{
  v0 = sub_2440D2FB0();
  v2 = v1;
  if (v0 == sub_2440D2FB0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2440D3A10();
  }

  return v5 & 1;
}

unint64_t sub_243FB89F0()
{
  result = qword_27EDC1C30;
  if (!qword_27EDC1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1C30);
  }

  return result;
}

uint64_t sub_243FB8A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243FB8AB8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_243FB5B94(v3, v4, v5, v2);
}

uint64_t sub_243FB8B4C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243FB666C(v3, v4, v5, v2);
}

uint64_t sub_243FB8BE0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243FB69C8(v3, v4, v5, v2);
}

void type metadata accessor for Name()
{
  if (!qword_27EDC1C60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDC1C60);
    }
  }
}

uint64_t sub_243FB8CC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243FB8D04()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_243FB7A7C(v3, v4, v5, v2);
}

unint64_t sub_243FB8D98()
{
  result = qword_27EDC1C50;
  if (!qword_27EDC1C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC1C50);
  }

  return result;
}

unint64_t sub_243FB8DE8()
{
  result = qword_27EDC1C58;
  if (!qword_27EDC1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1C58);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceManager()
{
  result = qword_27EDC9A40;
  if (!qword_27EDC9A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243FB8E90()
{
  result = sub_2440D08A0();
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

uint64_t sub_243FB9044(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_243FB9098()
{
  v0 = sub_2440707F0();
  swift_beginAccess();
  return *v0;
}

uint64_t sub_243FB90D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a10;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

uint64_t sub_243FB90F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_2440D1B10();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - v6;
  v32 = sub_2440D2740();
  v7 = *(v32 - 8);
  v8 = MEMORY[0x28223BE20](v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C90);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1C98);
  MEMORY[0x28223BE20](v33);
  v17 = &v31 - v16;
  v39 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1CA0);
  sub_243FB97C8();
  sub_2440D2870();
  sub_2440D2B00();
  sub_2440D1560();
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1CD0) + 36)];
  v19 = v41;
  *v18 = v40;
  *(v18 + 1) = v19;
  *(v18 + 2) = v42;
  v20 = *(v2 + 24);
  v21 = sub_2440D20B0();
  v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1CD8) + 36)];
  *v22 = v20;
  v22[8] = v21;
  *&v15[*(v13 + 36)] = 256;

  sub_2440D2730();
  MEMORY[0x245D56610](1);
  v23 = *(v7 + 8);
  v24 = v32;
  v23(v10, v32);
  sub_243FB9958();
  sub_243FB9B80();
  sub_2440D2390();
  v23(v12, v24);
  sub_243F5EED4(v15, &qword_27EDC1C90);
  v25 = v34;
  sub_2440D1B00();
  v26 = v36;
  v27 = v37;
  (*(v36 + 16))(v35, v25, v37);
  sub_243FBB0DC(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v28 = v27;
  v29 = sub_2440D1610();
  (*(v26 + 8))(v25, v28);
  *&v17[*(v33 + 36)] = v29;
  sub_243FB9BD4();
  sub_2440D24E0();
  return sub_243F5EED4(v17, &qword_27EDC1C98);
}

uint64_t sub_243FB957C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;

  v7 = sub_2440D2760();
  sub_2440D2B00();
  sub_2440D18E0();
  sub_244070868();
  swift_beginAccess();
  sub_2440D2180();
  v8 = sub_2440D2170();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_2440D21C0();
  sub_243F5EED4(v6, &qword_27EDC1B60);
  KeyPath = swift_getKeyPath();
  v11 = *(a1 + 16);
  v12 = swift_getKeyPath();
  v13 = v17[5];
  *(a2 + 56) = v17[6];
  v14 = v17[8];
  *(a2 + 72) = v17[7];
  *(a2 + 88) = v14;
  *(a2 + 104) = v17[9];
  v15 = v17[4];
  *(a2 + 8) = v17[3];
  *(a2 + 24) = v15;
  *a2 = v7;
  *(a2 + 40) = v13;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = v9;
  *(a2 + 136) = v12;
  *(a2 + 144) = v11;
}

unint64_t sub_243FB97C8()
{
  result = qword_27EDC1CA8;
  if (!qword_27EDC1CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1CA0);
    sub_243FB9880();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1CA8);
  }

  return result;
}

unint64_t sub_243FB9880()
{
  result = qword_27EDC1CB0;
  if (!qword_27EDC1CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1CB8);
    sub_243FBAA28(&qword_27EDC1CC0, &qword_27EDC1CC8);
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1CB0);
  }

  return result;
}

unint64_t sub_243FB9958()
{
  result = qword_27EDC1CE0;
  if (!qword_27EDC1CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1C90);
    sub_243FB9A10();
    sub_243F5DD50(&qword_27EDC1D08, &qword_27EDC1D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1CE0);
  }

  return result;
}

unint64_t sub_243FB9A10()
{
  result = qword_27EDC1CE8;
  if (!qword_27EDC1CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1CD8);
    sub_243FB9AC8();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1CE8);
  }

  return result;
}

unint64_t sub_243FB9AC8()
{
  result = qword_27EDC1CF0;
  if (!qword_27EDC1CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1CD0);
    sub_243F5DD50(&qword_27EDC1CF8, &qword_27EDC1D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1CF0);
  }

  return result;
}

unint64_t sub_243FB9B80()
{
  result = qword_27EDC1D18;
  if (!qword_27EDC1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1D18);
  }

  return result;
}

unint64_t sub_243FB9BD4()
{
  result = qword_27EDC1D20;
  if (!qword_27EDC1D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1C90);
    sub_243FB9958();
    sub_243FB9B80();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1D20);
  }

  return result;
}

double sub_243FB9D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_2440707D8();
  swift_beginAccess();
  result = *v18;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = result;
  return result;
}

uint64_t sub_243FB9DC4@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_2440D1B10();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v61 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = v47 - v5;
  v59 = sub_2440D2990();
  MEMORY[0x28223BE20](v59);
  v58 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D2740();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v54 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = v47 - v10;
  v50 = sub_2440D1FB0();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1D28);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v14 = v47 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1D30);
  MEMORY[0x28223BE20](v66);
  v65 = v47 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1D38);
  MEMORY[0x28223BE20](v55);
  v52 = v47 - v16;
  v67 = v1;
  v47[1] = *(v1 + 48);
  v68 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1D40);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0DD0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
  v19 = sub_243FBAA28(&qword_27EDC0DC8, &qword_27EDC0DD0);
  v20 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
  v69 = v17;
  v70 = v18;
  v71 = v19;
  v72 = v20;
  swift_getOpaqueTypeConformance2();
  sub_2440D2870();
  sub_2440D1FA0();
  sub_243F5DD50(&qword_27EDC1D48, &qword_27EDC1D28);
  sub_243FBB0DC(&qword_27EDC1D50, MEMORY[0x277CDE400]);
  v21 = v65;
  v22 = v48;
  v23 = v50;
  sub_2440D2380();
  (*(v51 + 8))(v12, v23);
  (*(v49 + 8))(v14, v22);
  v24 = *(v67 + 24);
  KeyPath = swift_getKeyPath();
  v69 = v24;

  v26 = sub_2440D1570();
  v27 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1D58) + 36)];
  *v27 = KeyPath;
  v27[1] = v26;
  v28 = &v21[*(v66 + 36)];
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_2440D1B90();
  v31 = *(*(v30 - 8) + 104);
  v31(v28, v29, v30);
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0E18) + 36)] = 256;
  v32 = v54;
  sub_2440D2730();
  v33 = v53;
  MEMORY[0x245D56610](1);
  v34 = *(v56 + 8);
  v35 = v32;
  v36 = v57;
  v34(v35, v57);
  v37 = v58;
  v31(v58, v29, v30);
  sub_243FBAB34();
  sub_243FBB0DC(&qword_27EDC0E40, MEMORY[0x277CE1260]);
  v38 = v52;
  v39 = v37;
  v40 = v65;
  sub_2440D2390();
  sub_243F88608(v39);
  v34(v33, v36);
  sub_243F5EED4(v40, &qword_27EDC1D30);
  v41 = v60;
  sub_2440D1B00();
  v42 = v62;
  v43 = v63;
  (*(v62 + 16))(v61, v41, v63);
  sub_243FBB0DC(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v44 = v43;
  v45 = sub_2440D1610();
  (*(v42 + 8))(v41, v44);
  *(v38 + *(v55 + 36)) = v45;
  sub_243FBAD64();
  sub_2440D24E0();
  return sub_243F5EED4(v38, &qword_27EDC1D38);
}

uint64_t sub_243FBA610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v30[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v30[0]);
  v30[2] = a1;
  v31 = v30 - v3;

  sub_24401FBC0();
  v4 = sub_24401FBD4();
  v6 = v5;
  v8 = v7;
  v9 = sub_2440D22C0();
  v11 = v10;
  v13 = v12;
  sub_243F62C68(v4, v6, v8 & 1);

  sub_2440D2230();
  v14 = sub_2440D22E0();
  v16 = v15;
  v18 = v17;

  sub_243F62C68(v9, v11, v13 & 1);

  sub_2440D21B0();
  v19 = sub_2440D22A0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_243F62C68(v14, v16, v18 & 1);

  sub_2440D2B00();
  while (1)
  {
    sub_2440D18E0();
    v42 = v23 & 1;
    *&v32 = v19;
    *(&v32 + 1) = v21;
    LOBYTE(v33) = v23 & 1;
    *(&v33 + 1) = v25;
    v26 = *MEMORY[0x277CDF988];
    v21 = sub_2440D1770();
    v27 = v31;
    (*(*(v21 - 8) + 104))(v31, v26, v21);
    sub_243FBB0DC(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
    if (sub_2440D2F50())
    {
      break;
    }

    __break(1u);
    sub_2440D3480();
    v29 = sub_2440D2070();
    sub_2440D11B0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0DD0);
  sub_243FBAA28(&qword_27EDC0DC8, &qword_27EDC0DD0);
  sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
  sub_2440D2420();
  sub_243F5EED4(v27, &qword_27EDC0010);
  v41[6] = v38;
  v41[7] = v39;
  v41[8] = v40;
  v41[2] = v34;
  v41[3] = v35;
  v41[4] = v36;
  v41[5] = v37;
  v41[0] = v32;
  v41[1] = v33;
  return sub_243F5EED4(v41, &qword_27EDC0DD0);
}

uint64_t sub_243FBAA28(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FBAADC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D55950]();
  *a1 = result;
  return result;
}

unint64_t sub_243FBAB34()
{
  result = qword_27EDC1D60;
  if (!qword_27EDC1D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1D30);
    sub_243FBABEC();
    sub_243F5DD50(&qword_27EDC0E38, &qword_27EDC0E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1D60);
  }

  return result;
}

unint64_t sub_243FBABEC()
{
  result = qword_27EDC1D68;
  if (!qword_27EDC1D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1D28);
    sub_2440D1FB0();
    sub_243F5DD50(&qword_27EDC1D48, &qword_27EDC1D28);
    sub_243FBB0DC(&qword_27EDC1D50, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC1D70, &qword_27EDC1D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1D68);
  }

  return result;
}

unint64_t sub_243FBAD64()
{
  result = qword_27EDC1D80;
  if (!qword_27EDC1D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1D30);
    sub_2440D2990();
    sub_243FBAB34();
    sub_243FBB0DC(&qword_27EDC0E40, MEMORY[0x277CE1260]);
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1D80);
  }

  return result;
}

uint64_t sub_243FBAEF4(uint64_t a1, int a2)
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

uint64_t sub_243FBAF40(uint64_t result, int a2, int a3)
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

uint64_t sub_243FBAFE4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243FBB0DC(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243FBB0DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243FBB130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v40 = a2;
  v49 = a4;
  v44 = sub_2440D1B10();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E00);
  v42 = *(v43 - 8);
  v7 = MEMORY[0x28223BE20](v43);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v38 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E08);
  MEMORY[0x28223BE20](v46);
  v11 = &v38 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E10);
  MEMORY[0x28223BE20](v48);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E18);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E20);
  MEMORY[0x28223BE20](v47);
  v18 = &v38 - v17;
  if (!a1)
  {
    type metadata accessor for IdentityViewModel();
    sub_243FBC648(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
    result = sub_2440D1910();
    __break(1u);
    return result;
  }

  v19 = *(*a1 + 464);
  v20 = swift_retain_n();
  v57 = v19(v20);
  v56 = 8;
  sub_243FBC5F4();
  sub_2440D31F0();
  sub_2440D31F0();
  if (v53 == v50 && v54 == *(&v50 + 1))
  {
  }

  else
  {
    v22 = sub_2440D3A10();

    if ((v22 & 1) == 0)
    {

      v29 = (*(*a1 + 464))(v28);

      v30 = v29;
      v31 = v45;
      if (sub_243FBB9D4(v30, v45))
      {
        swift_storeEnumTagMultiPayload();
        sub_243FBC880();
        return sub_2440D1D20();
      }

      *v11 = sub_2440D1B30();
      *(v11 + 1) = 0;
      v11[16] = 1;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E30);
      sub_243FBBAC0(a1, v40, v31, &v11[*(v32 + 44)]);
      sub_2440D1B00();
      sub_2440D2BD0();
      v45 = sub_243FBC648(&qword_27EDC0148, MEMORY[0x277CE0068]);
      v33 = v39;
      v34 = v44;
      sub_2440D1400();

      (*(v41 + 8))(v6, v34);
      v35 = v42;
      v36 = v43;
      (*(v42 + 16))(v38, v33, v43);
      v53 = v34;
      v54 = v45;
      swift_getOpaqueTypeConformance2();
      v37 = sub_2440D1610();
      (*(v35 + 8))(v33, v36);
      *&v11[*(v46 + 36)] = v37;
      v25 = &qword_27EDC1E08;
      sub_243F5F574(v11, v16, &qword_27EDC1E08);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E38);
      sub_243FBC690();
      sub_243FBC79C();
      sub_2440D1D20();
      sub_243F5F574(v18, v13, &qword_27EDC1E20);
      swift_storeEnumTagMultiPayload();
      sub_243FBC880();
      sub_2440D1D20();
      sub_243F5EED4(v18, &qword_27EDC1E20);
      v26 = v11;
      return sub_243F5EED4(v26, v25);
    }
  }

  v23 = (*(*a1 + 1328))(v21);

  v51 = type metadata accessor for IdentityViewModel();
  v52 = &off_285778858;
  *&v50 = a1;
  sub_243F4E2F4();
  sub_244020D18(v23, &v50, &v53);
  sub_243F9A1F0();
  sub_2440D15D0();
  v24 = sub_2440D1580();

  v55 = v24;
  v25 = &qword_27EDC1E38;
  sub_243F5F574(&v53, v16, &qword_27EDC1E38);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E38);
  sub_243FBC690();
  sub_243FBC79C();
  sub_2440D1D20();
  sub_243F5F574(v18, v13, &qword_27EDC1E20);
  swift_storeEnumTagMultiPayload();
  sub_243FBC880();
  sub_2440D1D20();
  sub_243F5EED4(v18, &qword_27EDC1E20);
  v26 = &v53;
  return sub_243F5EED4(v26, v25);
}

uint64_t sub_243FBB9D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_243FBCBB4(), v3 = sub_2440D2F00(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_243F67588();
    do
    {
      v7 = sub_2440D2F50();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_243FBBAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;

  v15 = sub_243FBB128(v14);
  v16 = sub_243F795D0();
  v17 = sub_243FB9098();
  sub_243FB90D8(0x6B72616D78, 0xE500000000000000, v15, v16, 0xD000000000000016, 0x80000002440EAAC0, sub_243FBC910, v13, &v39, v17);
  v18 = sub_243F68750();
  v36 = sub_2440579C8(v18 & 1, 0x435F4E4F54545542);
  v37 = v19;
  sub_243FBC9E4();
  sub_243F4EF64();
  v33 = v12;
  sub_2440D2440();

  v44[2] = v41;
  v44[3] = v42;
  v45 = v43;
  v44[0] = v39;
  v44[1] = v40;
  sub_243FBCA38(v44);
  type metadata accessor for IdentityViewModel();
  sub_243FBC648(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  sub_2440D1900();
  swift_getKeyPath();
  sub_2440D1920();

  v20 = v36;
  v21 = v37;
  LOBYTE(v15) = v38;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;

  sub_243FC6EE4(v20, v21, v15, sub_243FBCACC, v22, &v39);
  v34 = v10;
  sub_243F5F574(v12, v10, &qword_27EDC1E70);
  v23 = v39;
  LOBYTE(v22) = v40;
  LOBYTE(a2) = BYTE8(v40);
  v24 = v41;
  v25 = v42;
  v26 = v10;
  v27 = v35;
  sub_243F5F574(v26, v35, &qword_27EDC1E70);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E80);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v27 + *(v28 + 64);
  *v30 = v23;
  *(v30 + 16) = v22;
  *(v30 + 24) = a2;
  *(v30 + 32) = v24;
  *(v30 + 48) = v25;

  sub_243F5EED4(v33, &qword_27EDC1E70);

  return sub_243F5EED4(v34, &qword_27EDC1E70);
}

uint64_t sub_243FBBEB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

uint64_t sub_243FBBF58()
{
  type metadata accessor for IdentityViewModel();
  sub_243FBC648(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v0 = sub_2440D1930();
  sub_243FBC1A0(&unk_285775E60);
  return v0;
}

uint64_t sub_243FBBFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1DB0);
  return sub_243FBB130(v3, v4, v5, a1 + *(v6 + 44));
}

uint64_t sub_243FBC048@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IdentityViewModel();
  sub_243FBC648(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
  v2 = sub_2440D1930();
  v4 = v3;
  v5 = sub_243FBC1A0(&unk_285775E60);
  v6 = sub_24400C3C4();
  result = sub_2440D12E0();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

uint64_t sub_243FBC108(uint64_t a1)
{
  v2 = sub_243FBC5A0();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243FBC154(uint64_t a1)
{
  v2 = sub_243FBC5A0();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243FBC1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E90);
    v3 = sub_2440D3800();
    v4 = v3 + 56;
    v18 = a1 + 32;
    sub_243FBCBB4();
    v5 = 0;
    v17 = v1;
    while (1)
    {
      v9 = *(v18 + v5);
      result = sub_2440D2F00();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v4 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        sub_243F67588();
        while (1)
        {
          result = sub_2440D2F50();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v4 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v13) = v15 | v14;
        *(*(v3 + 48) + v12) = v9;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      if (++v5 == v17)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_243FBC334()
{
  result = qword_27EDC1DB8;
  if (!qword_27EDC1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1DB8);
  }

  return result;
}

uint64_t sub_243FBC3A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243FBC3EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243FBC494()
{
  result = qword_27EDC1DD0;
  if (!qword_27EDC1DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1DD8);
    sub_243FBC54C();
    sub_243F5DD50(&qword_27EDC1DE8, &qword_27EDC1DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1DD0);
  }

  return result;
}

unint64_t sub_243FBC54C()
{
  result = qword_27EDC1DE0;
  if (!qword_27EDC1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1DE0);
  }

  return result;
}

unint64_t sub_243FBC5A0()
{
  result = qword_27EDC1DF8;
  if (!qword_27EDC1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1DF8);
  }

  return result;
}

unint64_t sub_243FBC5F4()
{
  result = qword_27EDC1E28;
  if (!qword_27EDC1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E28);
  }

  return result;
}

uint64_t sub_243FBC648(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243FBC690()
{
  result = qword_27EDC1E40;
  if (!qword_27EDC1E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1E38);
    sub_243FBC748();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E40);
  }

  return result;
}

unint64_t sub_243FBC748()
{
  result = qword_27EDC1E48;
  if (!qword_27EDC1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E48);
  }

  return result;
}

unint64_t sub_243FBC79C()
{
  result = qword_27EDC1E50;
  if (!qword_27EDC1E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1E08);
    sub_243F5DD50(&qword_27EDC1E58, &qword_27EDC1E60);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E50);
  }

  return result;
}

unint64_t sub_243FBC880()
{
  result = qword_27EDC1E68;
  if (!qword_27EDC1E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC1E20);
    sub_243FBC690();
    sub_243FBC79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E68);
  }

  return result;
}

uint64_t sub_243FBC910()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    v2 = sub_243F4E2F4();
    (*(*v1 + 1384))(v2 & 1);
  }

  else
  {
    type metadata accessor for IdentityViewModel();
    sub_243FBC648(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_243FBC9E4()
{
  result = qword_27EDC1E78;
  if (!qword_27EDC1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E78);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

void sub_243FBCACC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(*v1 + 1424);

    v2(v3);

    v4 = *MEMORY[0x277D764D8];

    UIAccessibilityPostNotification(v4, 0);
  }

  else
  {
    type metadata accessor for IdentityViewModel();
    sub_243FBC648(&qword_27EDC1DA8, type metadata accessor for IdentityViewModel);
    sub_2440D1910();
    __break(1u);
  }
}

unint64_t sub_243FBCBB4()
{
  result = qword_27EDC1E88;
  if (!qword_27EDC1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC1E88);
  }

  return result;
}

__n128 sub_243FBCC68(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 105) = *(a1 + 89);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = result;
  return result;
}

uint64_t sub_243FBCCDC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v29 = *(v1 + 88);
  v30 = *(v1 + 104);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  MEMORY[0x245D56840](&v28);
  if (v28 == 1 && (sub_2440D2E00() & 1) == 0)
  {
    v15 = sub_243F4E038();
    sub_243F5F574(v15, v9, &qword_27EDC0A50);
    v16 = sub_2440D11E0();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {
      sub_243F5EED4(v9, &qword_27EDC0A50);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3460();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v27 = v17;
        v21 = v20;
        *v20 = 0;
        _os_log_impl(&dword_243F48000, v18, v19, "Starting scanner", v20, 2u);
        v22 = v21;
        v17 = v27;
        MEMORY[0x245D58570](v22, -1, -1);
      }

      (*(v17 + 8))(v9, v16);
    }

    return sub_2440D2E40();
  }

  else
  {
    v29 = *(v1 + 88);
    v30 = *(v1 + 104);
    result = MEMORY[0x245D56840](&v28, v10);
    if ((v28 & 1) == 0)
    {
      result = sub_2440D2E00();
      if (result)
      {
        v12 = sub_243F4E038();
        sub_243F5F574(v12, v7, &qword_27EDC0A50);
        v13 = sub_2440D11E0();
        v14 = *(v13 - 8);
        if ((*(v14 + 48))(v7, 1, v13) == 1)
        {
          sub_243F5EED4(v7, &qword_27EDC0A50);
        }

        else
        {
          v23 = sub_2440D11C0();
          v24 = sub_2440D3460();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_243F48000, v23, v24, "Stopping scanner", v25, 2u);
            MEMORY[0x245D58570](v25, -1, -1);
          }

          (*(v14 + 8))(v7, v13);
        }

        sub_2440D2E30();
        return [a1 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  return result;
}

uint64_t sub_243FBD21C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13, char a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14;
  return result;
}

uint64_t sub_243FBD258@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 89);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  type metadata accessor for QRCodeScannerViewCoordinator();
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  *(v6 + 105) = *(v1 + 89);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  *a1 = v6;
  return sub_243FBD3D0(v12, &v11);
}

uint64_t sub_243FBD2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FBF600();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_243FBD344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243FBF600();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_243FBD3A8()
{
  sub_243FBF600();
  sub_2440D2020();
  __break(1u);
}

uint64_t sub_243FBD408(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  v10 = sub_2440D2DB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2440D2DC0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277CE3098])
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v18 = sub_243F4E038();
    sub_243F5F574(v18, v9, &qword_27EDC0A50);
    v19 = sub_2440D11E0();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) == 1)
    {
      sub_243F5EED4(v9, &qword_27EDC0A50);
    }

    else
    {
      v24 = sub_2440D11C0();
      v25 = sub_2440D3460();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_243F48000, v24, v25, "Barcode scanned!", v26, 2u);
        MEMORY[0x245D58570](v26, -1, -1);
      }

      (*(v20 + 8))(v9, v19);
    }

    v27 = sub_2440D2DA0();
    if (v28)
    {
      v33[0] = v27;
      v33[1] = v28;
      sub_243FBD8CC(v33, v2);
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v21 = sub_243F4E038();
    sub_243F5F574(v21, v7, &qword_27EDC0A50);
    v22 = sub_2440D11E0();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v7, 1, v22) == 1)
    {
      sub_243F5EED4(v7, &qword_27EDC0A50);
    }

    else
    {
      v30 = sub_2440D11C0();
      v31 = sub_2440D3470();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_243F48000, v30, v31, "Unknown DataScanner item", v32, 2u);
        MEMORY[0x245D58570](v32, -1, -1);
      }

      (*(v23 + 8))(v7, v22);
    }

    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_243FBD8CC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v8 = *a1;
  v7 = a1[1];
  v9 = sub_243F4E038();
  sub_243F5F574(v9, v6, &qword_27EDC0A50);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_243F5EED4(v6, &qword_27EDC0A50);
  }

  else
  {
    v12 = sub_2440D11C0();
    v13 = sub_2440D3460();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_243F48000, v12, v13, "Payload read!", v14, 2u);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    (*(v11 + 8))(v6, v10);
  }

  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v19 = *(a2 + 72);
  v20 = v15;
  v21 = v16;
  v18[0] = v8;
  v18[1] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1EA8);
  return sub_2440D2950();
}

uint64_t sub_243FBDAC0()
{
  sub_2440D2D70();
  sub_2440D2D60();
  sub_2440D2D40();
  sub_2440D2D60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05C8);
  sub_2440D2950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2440DB130;
  sub_2440D2D60();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_2440D2D70();
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_2440D2D50();
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  sub_2440D2D40();
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E98);
  return sub_2440D2950();
}

uint64_t sub_243FBDC00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC1E98);
  sub_2440D2950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05C8);
  return sub_2440D2950();
}

uint64_t sub_243FBDCA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243FBDD5C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_2440D2D80();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D0700();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2DC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_243F4E038();
  sub_243F5F574(v15, v14, &qword_27EDC0A50);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v18 = *(v9 + 16);
    v39 = a1;
    v18(v11, a1, v8);
    v19 = sub_2440D11C0();
    v20 = sub_2440D3490();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v21;
      v38 = swift_slowAlloc();
      v46 = v38;
      *v21 = 136315138;
      v22 = v40;
      v37 = v19;
      sub_2440D2D30();
      sub_243FBF654(&qword_27EDC1EB0, 255, MEMORY[0x277CC95F0]);
      v35 = v20;
      v23 = v42;
      v34 = sub_2440D39C0();
      v25 = v24;
      (*(v41 + 8))(v22, v23);
      (*(v9 + 8))(v11, v8);
      v26 = sub_243F4E6F8(v34, v25, &v46);

      v27 = v36;
      v28 = v37;
      *(v36 + 1) = v26;
      v29 = v27;
      _os_log_impl(&dword_243F48000, v28, v35, "Add recognized item [ %s ]", v27, 0xCu);
      v30 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x245D58570](v30, -1, -1);
      MEMORY[0x245D58570](v29, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    (*(v17 + 8))(v14, v16);
    a1 = v39;
  }

  v31 = v43;
  sub_243FBD408(a1);
  sub_2440D2D90();
  (*(*v31 + 104))(v5);
  return (*(v44 + 8))(v5, v45);
}

uint64_t sub_243FBE220(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440D0700();
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2DC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_243F4E038();
  sub_243F5F574(v15, v14, &qword_27EDC0A50);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    v18 = sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    (*(v9 + 16))(v11, a1, v8);
    v19 = sub_2440D11C0();
    v36 = sub_2440D3490();
    if (os_log_type_enabled(v19, v36))
    {
      v20 = swift_slowAlloc();
      v33 = v20;
      v35 = swift_slowAlloc();
      v39 = v35;
      *v20 = 136315138;
      v34 = v19;
      sub_2440D2D30();
      sub_243FBF654(&qword_27EDC1EB0, 255, MEMORY[0x277CC95F0]);
      v21 = v37;
      v22 = sub_2440D39C0();
      v23 = v21;
      v25 = v24;
      (*(v38 + 8))(v7, v23);
      (*(v9 + 8))(v11, v8);
      v26 = sub_243F4E6F8(v22, v25, &v39);

      v27 = v33;
      v28 = v34;
      *(v33 + 1) = v26;
      v29 = v27;
      _os_log_impl(&dword_243F48000, v28, v36, "Remove recognized item [ %s ]", v27, 0xCu);
      v30 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x245D58570](v30, -1, -1);
      MEMORY[0x245D58570](v29, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v18 = (*(v17 + 8))(v14, v16);
  }

  return (*(*a2 + 112))(v18);
}