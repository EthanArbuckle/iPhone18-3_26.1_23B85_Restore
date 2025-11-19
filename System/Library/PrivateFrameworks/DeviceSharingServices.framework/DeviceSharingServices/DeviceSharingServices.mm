void *sub_248A4C010@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_248A4C240@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_248A4C27C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248A4C2BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248A4C318()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248A4C358()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248A4C3A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_248A62C38(*a1, v3);
  return Application.appIconImageData.setter(v2, v3);
}

uint64_t sub_248A4C428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return ApplicationLibrary.applications.setter(v4);
}

id DSSTelemetryLog()
{
  if (DSSTelemetryLog_onceToken != -1)
  {
    DSSTelemetryLog_cold_1();
  }

  v1 = DSSTelemetryLog_log;

  return v1;
}

uint64_t __DSSTelemetryLog_block_invoke()
{
  DSSTelemetryLog_log = os_log_create(DSSGuestUserModeLoggingSubsystem, "Telemetry");

  return MEMORY[0x2821F96F8]();
}

__CFString *NSStringFromDSSGuestUserModeState(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown DSSGuestUserModeState (%ld)", a1];
  }

  else
  {
    v2 = off_278F62258[a1];
  }

  return v2;
}

__CFString *NSStringFromDSSGuestUserModeAppRestrictionState(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Open Apps Enabled (restricted)";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown App Restriction State (%ld)", a1];
    }
  }

  else
  {
    v2 = @"All Apps Enabled (unrestricted)";
  }

  return v2;
}

id _DSSGuestUserCreateCopy(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  if (v5)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _DSSGuestUserCreateCopy_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  _DSSGuestUserCreateCopy_cold_2();
LABEL_3:
  v6 = [objc_msgSend(a2 allocWithZone:{a3), "init"}];
  objc_storeStrong((v6 + 8), v5[1]);
  objc_storeStrong((v6 + 16), v5[2]);
  objc_storeStrong((v6 + 24), v5[3]);
  *(v6 + 32) = *(v5 + 32);
  *(v6 + 33) = *(v5 + 33);
  *(v6 + 34) = *(v5 + 34);

  return v6;
}

uint64_t ViewMirroringDevice.deviceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ViewMirroringDevice.deviceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

DeviceSharingServices::ViewMirroringDevice __swiftcall ViewMirroringDevice.init(deviceName:deviceID:)(Swift::String deviceName, Swift::String_optional deviceID)
{
  v2->value = deviceName;
  v2[1] = deviceID;
  result.deviceID = deviceID;
  result.deviceName = deviceName;
  return result;
}

unint64_t ViewMirroringDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  MEMORY[0x24C1E18E0](v1, v2);
  v5 = 0xE300000000000000;
  MEMORY[0x24C1E18E0](2108704, 0xE300000000000000);
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  if (v3)
  {
    v5 = v3;
  }

  MEMORY[0x24C1E18E0](v6, v5);

  MEMORY[0x24C1E18E0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

void static ViewMirroringDevice.localDevice.getter(uint64_t *a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v3 = v2;
  v4 = MobileGestalt_copy_userAssignedDeviceName_obj();

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = sub_248A6D664();
  v7 = v6;

  APSCopyPairingIdentity();
  *a1 = v5;
  a1[1] = v7;
  a1[2] = 0;
  a1[3] = 0;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_248A4EAEC()
{
  v1 = *v0;
  sub_248A6DB34();
  MEMORY[0x24C1E1D60](v1);
  return sub_248A6DB64();
}

uint64_t sub_248A4EB34()
{
  v1 = *v0;
  sub_248A6DB34();
  MEMORY[0x24C1E1D60](v1);
  return sub_248A6DB64();
}

uint64_t sub_248A4EB78()
{
  if (*v0)
  {
    result = 0x4449656369766564;
  }

  else
  {
    result = 0x614E656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_248A4EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_248A6DAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_248A6DAB4();

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

uint64_t sub_248A4ECA8(uint64_t a1)
{
  v2 = sub_248A4EF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A4ECE4(uint64_t a1)
{
  v2 = sub_248A4EF44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewMirroringDevice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD468, &qword_248A6EAF0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A4EF44();
  sub_248A6DB84();
  v16 = 0;
  v12 = v14[3];
  sub_248A6DA54();
  if (!v12)
  {
    v15 = 1;
    sub_248A6DA34();
  }

  return (*(v4 + 8))(v7, v3);
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

unint64_t sub_248A4EF44()
{
  result = qword_27EEBD470;
  if (!qword_27EEBD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD470);
  }

  return result;
}

uint64_t ViewMirroringDevice.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD478, &qword_248A6EAF8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A4EF44();
  sub_248A6DB74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_248A6D9E4();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_248A6D9C4();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t static ViewMirroringDevice.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_248A6DAB4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_248A6DAB4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_248A4F2B4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_248A6DAB4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_248A6DAB4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_248A4F354()
{
  sub_248A4F874();
  sub_248A4F8C8();
  return sub_248A6D5E4();
}

uint64_t sub_248A4F3A8()
{
  sub_248A4F874();
  sub_248A4F8C8();
  return sub_248A6D5F4();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_248A4F430(uint64_t a1, int a2)
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

uint64_t sub_248A4F478(uint64_t result, int a2, int a3)
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

uint64_t sub_248A4F564(uint64_t a1, int a2)
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

uint64_t sub_248A4F584(uint64_t result, int a2, int a3)
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

void sub_248A4F5C0(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ViewMirroringDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewMirroringDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_248A4F770()
{
  result = qword_27EEBD4B8;
  if (!qword_27EEBD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD4B8);
  }

  return result;
}

unint64_t sub_248A4F7C8()
{
  result = qword_27EEBD4C0;
  if (!qword_27EEBD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD4C0);
  }

  return result;
}

unint64_t sub_248A4F820()
{
  result = qword_27EEBD4C8;
  if (!qword_27EEBD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD4C8);
  }

  return result;
}

unint64_t sub_248A4F874()
{
  result = qword_27EEBD4D0;
  if (!qword_27EEBD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD4D0);
  }

  return result;
}

unint64_t sub_248A4F8C8()
{
  result = qword_27EEBD4D8;
  if (!qword_27EEBD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD4D8);
  }

  return result;
}

uint64_t sub_248A4F924()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD4E0, &qword_248A6EF80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x277D85778]);
  return sub_248A6D7D4();
}

uint64_t sub_248A4FA20(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD540, &qword_248A6EFC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD4F0, &unk_248A6EF88);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isActiveContinuation;
  swift_beginAccess();
  sub_248A51AD8(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_248A4FB60(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD4F0, &unk_248A6EF88);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v19[-v6];
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD540, &qword_248A6EFC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v19[-v9];
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD568, &qword_248A6F068) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v19[-v12];
  v14 = OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isLiveActivityActive;
  *(v1 + OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isLiveActivityActive) = a1;
  v15 = OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isActiveContinuation;
  swift_beginAccess();
  sub_248A51A08(v1 + v15, v10);
  if ((*(v4 + 48))(v10, 1, v3))
  {
    sub_248A51A78(v10, &qword_27EEBD540, &qword_248A6EFC0);
    v16 = 1;
  }

  else
  {
    (*(v4 + 16))(v7, v10, v3);
    sub_248A51A78(v10, &qword_27EEBD540, &qword_248A6EFC0);
    v19[7] = *(v1 + v14);
    sub_248A6D7C4();
    (*(v4 + 8))(v7, v3);
    v16 = 0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD570, &unk_248A6F070);
  (*(*(v17 - 8) + 56))(v13, v16, 1, v17);
  return sub_248A51A78(v13, &qword_27EEBD568, &qword_248A6F068);
}

uint64_t LiveActivityCoordinator.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isActiveContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD4F0, &unk_248A6EF88);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isLiveActivityActive) = 0;
  return v3;
}

uint64_t LiveActivityCoordinator.init()()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isActiveContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD4F0, &unk_248A6EF88);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isLiveActivityActive) = 0;
  return v0;
}

void sub_248A4FF68()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_248A6D4C4();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20]();
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD500, &qword_248A6EF98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v61 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD508, &qword_248A6EFA0);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v59 - v12;
  if (qword_27EEBD430 != -1)
  {
    swift_once();
  }

  v13 = sub_248A6D624();
  v66 = __swift_project_value_buffer(v13, qword_27EEC3C20);
  v14 = sub_248A6D604();
  v15 = sub_248A6D814();
  v16 = os_log_type_enabled(v14, v15);
  v65 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v69 = v18;
    *v17 = 136446210;
    v19 = sub_248A6DBB4();
    v21 = sub_248A50F9C(v19, v20, &v69);
    v2 = v1;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_248A4A000, v14, v15, "[%{public}s] Starting Live Activity", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x24C1E2580](v18, -1, -1);
    MEMORY[0x24C1E2580](v17, -1, -1);
  }

  if (*(v3 + OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isLiveActivityActive))
  {
    v22 = sub_248A6D604();
    v23 = sub_248A6D814();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v69 = v25;
      *v24 = 136446210;
      v26 = sub_248A6DBB4();
      v28 = sub_248A50F9C(v26, v27, &v69);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_248A4A000, v22, v23, "[%{public}s] Live Activity is already active", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x24C1E2580](v25, -1, -1);
      MEMORY[0x24C1E2580](v24, -1, -1);
    }
  }

  else
  {
    v29 = sub_248A6D434();
    (*(*(v29 - 8) + 56))(v61, 1, 1, v29);
    sub_248A50EA0();
    sub_248A50EF4();
    sub_248A50F48();
    sub_248A6D4D4();
    sub_248A6D4A4();
    sub_248A6D4B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD528, &qword_248A6EFA8);
    sub_248A6D474();
    if (v2)
    {
      v30 = v2;
      v31 = sub_248A6D604();
      v32 = sub_248A6D804();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v66 = v3;
        v36 = v35;
        v69 = v35;
        *v33 = 136446466;
        v37 = sub_248A6DBB4();
        v39 = sub_248A50F9C(v37, v38, &v69);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2114;
        v40 = v2;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v41;
        *v34 = v41;
        _os_log_impl(&dword_248A4A000, v31, v32, "[%{public}s] Failed to start Live Activity: %{public}@", v33, 0x16u);
        sub_248A51A78(v34, &qword_27EEBD530, &qword_248A6EFB0);
        MEMORY[0x24C1E2580](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x24C1E2580](v36, -1, -1);
        MEMORY[0x24C1E2580](v33, -1, -1);
      }

      sub_248A4FB60(0);
      swift_willThrow();
      (*(v64 + 8))(v68, v5);
      (*(v62 + 8))(v67, v63);
    }

    else
    {
      v61 = 0;
      sub_248A6D454();
      *(swift_allocObject() + 16) = v65;
      v42 = objc_allocWithZone(sub_248A6D564());
      v43 = sub_248A6D554();

      v44 = v43;
      v45 = sub_248A6D604();
      v46 = sub_248A6D814();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v66 = v3;
        v48 = v47;
        v60 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 136446722;
        v50 = sub_248A6DBB4();
        v51 = v46;
        v53 = sub_248A50F9C(v50, v52, &v69);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2082;
        v54 = sub_248A6D454();
        v56 = sub_248A50F9C(v54, v55, &v69);

        *(v48 + 14) = v56;
        *(v48 + 22) = 2114;
        *(v48 + 24) = v44;
        v57 = v60;
        *v60 = v44;
        v58 = v44;
        _os_log_impl(&dword_248A4A000, v45, v51, "[%{public}s] Started Live Activity %{public}s; assertion %{public}@", v48, 0x20u);
        sub_248A51A78(v57, &qword_27EEBD530, &qword_248A6EFB0);
        MEMORY[0x24C1E2580](v57, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x24C1E2580](v49, -1, -1);
        MEMORY[0x24C1E2580](v48, -1, -1);
      }

      sub_248A4FB60(1);

      (*(v64 + 8))(v68, v5);
      (*(v62 + 8))(v67, v63);
    }
  }
}

void sub_248A5081C(void *a1, void *a2)
{
  if (qword_27EEBD430 != -1)
  {
    swift_once();
  }

  v4 = sub_248A6D624();
  __swift_project_value_buffer(v4, qword_27EEC3C20);
  v5 = a1;
  v6 = a2;
  oslog = sub_248A6D604();
  v7 = sub_248A6D814();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446722;
    v11 = sub_248A6DBB4();
    v13 = sub_248A50F9C(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v5;
    *(v8 + 22) = 2114;
    v14 = v5;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    v9[1] = v16;
    _os_log_impl(&dword_248A4A000, oslog, v7, "[%{public}s] Invalidated assertion %{public}@; error %{public}@", v8, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD530, &qword_248A6EFB0);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x24C1E2580](v10, -1, -1);
    MEMORY[0x24C1E2580](v8, -1, -1);
  }
}

unint64_t sub_248A50A18()
{
  v1 = v0;
  v2 = *v0;
  v26 = sub_248A6D494();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD538, &qword_248A6EFB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v25 - v8;
  if (qword_27EEBD430 != -1)
  {
    swift_once();
  }

  v10 = sub_248A6D624();
  __swift_project_value_buffer(v10, qword_27EEC3C20);
  v11 = sub_248A6D604();
  v12 = sub_248A6D814();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136446210;
    v15 = sub_248A6DBB4();
    v17 = sub_248A50F9C(v15, v16, &v27);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_248A4A000, v11, v12, "[%{public}s] Stopping Live Activity", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x24C1E2580](v14, -1, -1);
    MEMORY[0x24C1E2580](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD528, &qword_248A6EFA8);
  result = sub_248A6D444();
  v19 = result;
  if (!(result >> 62))
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_15:

    return sub_248A4FB60(0);
  }

  result = sub_248A6D954();
  v20 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v20 >= 1)
  {
    v25[1] = v1;
    v21 = 0;
    v22 = (v3 + 8);
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1E1AE0](v21, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v21 + 32);
      }

      ++v21;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD508, &qword_248A6EFA0);
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
      sub_248A6D484();
      sub_248A6D464();

      (*v22)(v6, v26);
      sub_248A51A78(v9, &qword_27EEBD538, &qword_248A6EFB8);
    }

    while (v20 != v21);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t LiveActivityCoordinator.deinit()
{
  sub_248A51A78(v0 + OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isActiveContinuation, &qword_27EEBD540, &qword_248A6EFC0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LiveActivityCoordinator.__deallocating_deinit()
{
  sub_248A51A78(v0 + OBJC_IVAR____TtC21DeviceSharingServices23LiveActivityCoordinator_isActiveContinuation, &qword_27EEBD540, &qword_248A6EFC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_248A50EA0()
{
  result = qword_27EEBD510;
  if (!qword_27EEBD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD510);
  }

  return result;
}

unint64_t sub_248A50EF4()
{
  result = qword_27EEBD518;
  if (!qword_27EEBD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD518);
  }

  return result;
}

unint64_t sub_248A50F48()
{
  result = qword_27EEBD520;
  if (!qword_27EEBD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD520);
  }

  return result;
}

uint64_t sub_248A50F9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248A51068(v11, 0, 0, 1, a1, a2);
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
    sub_248A519A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_248A51068(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248A51174(a5, a6);
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
    result = sub_248A6D8F4();
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

uint64_t sub_248A51174(uint64_t a1, unint64_t a2)
{
  v4 = sub_248A511C0(a1, a2);
  sub_248A512F0(&unk_285B66AD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_248A511C0(uint64_t a1, unint64_t a2)
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

  v6 = sub_248A513DC(v5, 0);
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

  result = sub_248A6D8F4();
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
        v10 = sub_248A6D6D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248A513DC(v10, 0);
        result = sub_248A6D8A4();
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

uint64_t sub_248A512F0(uint64_t result)
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

  result = sub_248A51450(result, v12, 1, v3);
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

void *sub_248A513DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD560, &qword_248A6F060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248A51450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD560, &qword_248A6F060);
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

uint64_t type metadata accessor for LiveActivityCoordinator()
{
  result = qword_27EEBD548;
  if (!qword_27EEBD548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_248A515A0()
{
  sub_248A518FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LiveActivityCoordinator.getIsLiveActivityActive()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248A517A4;

  return v6();
}

uint64_t sub_248A517A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_248A518FC()
{
  if (!qword_27EEBD558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEBD4F0, &unk_248A6EF88);
    v0 = sub_248A6D824();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEBD558);
    }
  }
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

uint64_t sub_248A519A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_248A51A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD540, &qword_248A6EFC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A51A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248A51AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD540, &qword_248A6EFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

DeviceSharingServices::GuestUserAccessTransportItem_optional __swiftcall GuestUserAccessTransportItem.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = 0;
  v3 = 12;
  switch(rawValue)
  {
    case 0xC9u:
      goto LABEL_26;
    case 0xCAu:
      v2 = 1;
      goto LABEL_26;
    case 0xCBu:
      v2 = 2;
      goto LABEL_26;
    case 0xCCu:
      v2 = 3;
      goto LABEL_26;
    case 0xCDu:
      v2 = 4;
      goto LABEL_26;
    case 0xCEu:
      v2 = 5;
      goto LABEL_26;
    case 0xCFu:
      v2 = 6;
      goto LABEL_26;
    case 0xD0u:
      v2 = 7;
      goto LABEL_26;
    case 0xD1u:
      v2 = 8;
      goto LABEL_26;
    case 0xD2u:
      v2 = 9;
      goto LABEL_26;
    case 0xD3u:
      v2 = 10;
      goto LABEL_26;
    case 0xD4u:
      v2 = 11;
LABEL_26:
      v3 = v2;
      goto LABEL_27;
    case 0xD5u:
LABEL_27:
      *v1 = v3;
      break;
    case 0xD6u:
      *v1 = 13;
      break;
    case 0xD7u:
      *v1 = 14;
      break;
    case 0xD8u:
      *v1 = 15;
      break;
    case 0xD9u:
      *v1 = 16;
      break;
    case 0x12Du:
      *v1 = 17;
      break;
    case 0x12Eu:
      *v1 = 18;
      break;
    case 0x12Fu:
      *v1 = 19;
      break;
    case 0x130u:
      *v1 = 20;
      break;
    case 0x131u:
      *v1 = 21;
      break;
    case 0x132u:
      *v1 = 22;
      break;
    case 0x133u:
      *v1 = 23;
      break;
    case 0x134u:
      *v1 = 24;
      break;
    case 0x135u:
      *v1 = 25;
      break;
    case 0x136u:
      *v1 = 26;
      break;
    case 0x137u:
      *v1 = 27;
      break;
    case 0x138u:
      *v1 = 28;
      break;
    case 0x139u:
      *v1 = 29;
      break;
    default:
      *v1 = 30;
      break;
  }

  return rawValue;
}

unint64_t sub_248A51CF0()
{
  result = qword_281510DD0;
  if (!qword_281510DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281510DD0);
  }

  return result;
}

uint64_t sub_248A51D44()
{
  v1 = *v0;
  sub_248A6DB34();
  v2 = dword_248A6F28C[v1];
  sub_248A6DB54();
  return sub_248A6DB64();
}

uint64_t sub_248A51DCC()
{
  v1 = *v0;
  sub_248A6DB34();
  v2 = dword_248A6F28C[v1];
  sub_248A6DB54();
  return sub_248A6DB64();
}

unint64_t sub_248A51E24()
{
  result = qword_281510DC8;
  if (!qword_281510DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281510DC8);
  }

  return result;
}

unint64_t sub_248A51E7C()
{
  result = qword_281510DE0[0];
  if (!qword_281510DE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281510DE0);
  }

  return result;
}

unint64_t sub_248A51ED4()
{
  result = qword_281510DD8;
  if (!qword_281510DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281510DD8);
  }

  return result;
}

unint64_t sub_248A51F2C()
{
  result = qword_281510DC0;
  if (!qword_281510DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281510DC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuestUserAccessTransportItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuestUserAccessTransportItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_248A5218C()
{
  result = qword_27EEBD578;
  if (!qword_27EEBD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD578);
  }

  return result;
}

id static NSBundle.deviceSharingServices.getter()
{
  _s29deviceSharingServicesSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_248A522A4(uint64_t a1)
{
  v2 = sub_248A526C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A522E0(uint64_t a1)
{
  v2 = sub_248A526C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A523D4(uint64_t a1)
{
  v2 = sub_248A52718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A52410(uint64_t a1)
{
  v2 = sub_248A52718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A52490(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_248A6DB84();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_248A525B4()
{
  result = qword_27EEBD580;
  if (!qword_27EEBD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD580);
  }

  return result;
}

unint64_t sub_248A5260C()
{
  result = qword_27EEBD588;
  if (!qword_27EEBD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD588);
  }

  return result;
}

unint64_t sub_248A52670()
{
  result = qword_27EEBD590;
  if (!qword_27EEBD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD590);
  }

  return result;
}

unint64_t sub_248A526C4()
{
  result = qword_27EEBD5A0;
  if (!qword_27EEBD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5A0);
  }

  return result;
}

unint64_t sub_248A52718()
{
  result = qword_27EEBD5B0;
  if (!qword_27EEBD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5B0);
  }

  return result;
}

unint64_t sub_248A52790()
{
  result = qword_27EEBD5B8;
  if (!qword_27EEBD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5B8);
  }

  return result;
}

unint64_t sub_248A527E8()
{
  result = qword_27EEBD5C0;
  if (!qword_27EEBD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5C0);
  }

  return result;
}

unint64_t sub_248A52840()
{
  result = qword_27EEBD5C8;
  if (!qword_27EEBD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5C8);
  }

  return result;
}

unint64_t sub_248A52898()
{
  result = qword_27EEBD5D0;
  if (!qword_27EEBD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5D0);
  }

  return result;
}

uint64_t GuestUserHandoverService.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD5D8, &unk_248A6F620);
  v2 = sub_248A6D584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD810, &qword_248A705D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t GuestUserHandoverService.init(xpcTransport:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD810, &qword_248A705D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t sub_248A52A14()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 16) = v2;
  *(v0 + 56) = 29;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = &unk_248A6F640;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D05170] + 4);
  swift_retain_n();

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD5D8, &unk_248A6F620);
  v8 = sub_248A5374C();
  *v6 = v0;
  v6[1] = sub_248A52B84;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v0 + 56, &unk_248A6F650, v4, v7, v9, v8, v10);
}

uint64_t sub_248A52B84()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_248A52CB8, 0, 0);
}

uint64_t sub_248A52CB8()
{
  v1 = *(v0 + 24);
  sub_248A6D5C4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_248A52D18(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_248A52DB8;

  return sub_248A52F04(a1);
}

uint64_t sub_248A52DB8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A52EEC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_248A52F04(char a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A52F2C, 0, 0);
}

uint64_t sub_248A52F2C()
{
  v14 = v0;
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = sub_248A6D624();
  __swift_project_value_buffer(v1, qword_27EEC3C50);
  v2 = sub_248A6D604();
  v3 = sub_248A6D814();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446722;
    *(v5 + 4) = sub_248A50F9C(0xD000000000000018, 0x8000000248A6F650, &v13);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_248A50F9C(0xD00000000000003BLL, 0x8000000248A72C80, &v13);
    *(v5 + 22) = 1026;
    *(v5 + 24) = v4;
    _os_log_impl(&dword_248A4A000, v2, v3, "%{public}s %{public}s: %{BOOL,public}d", v5, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v6, -1, -1);
    MEMORY[0x24C1E2580](v5, -1, -1);
  }

  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 32) = v9;

  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000013, 0x8000000248A72C60);
  v13 = v7;
  sub_248A5B9E4(&v13, sub_248A55964);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_248A53180(unsigned __int8 *a1, int *a2)
{
  v3 = *a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A53274;

  return v7(v3);
}

uint64_t sub_248A53274()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GuestUserHandoverService.postNotification(notificationType:destination:)(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  *(v3 + 27) = *(a1 + 8);
  *(v3 + 28) = *a2;
  v5 = *v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return MEMORY[0x2822009F8](sub_248A533C4, 0, 0);
}

uint64_t sub_248A533C4()
{
  v1 = *(v0 + 27);
  v2 = *(v0 + 32);
  *(v0 + 26) = 12;
  v3 = *(v0 + 28);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1 | (v3 << 8);
  v4 = *(MEMORY[0x277D050F0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = sub_248A537B0();
  *v5 = v0;
  v5[1] = sub_248A534A4;
  v7 = *(v0 + 40);

  return MEMORY[0x28215AB10](v0 + 26, v0 + 16, &type metadata for NotificationPayload, v6);
}

uint64_t sub_248A534A4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A535D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_248A535F0(char a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248A53274;

  return sub_248A52D18(a1, v5, v4);
}

uint64_t sub_248A53698(unsigned __int8 *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248A559D8;

  return sub_248A53180(a1, v5);
}

unint64_t sub_248A5374C()
{
  result = qword_27EEBD5E0;
  if (!qword_27EEBD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEBD5D8, &unk_248A6F620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5E0);
  }

  return result;
}

unint64_t sub_248A537B0()
{
  result = qword_27EEBD5E8;
  if (!qword_27EEBD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5E8);
  }

  return result;
}

uint64_t GuestUserHandoverService.add(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = *v2;
  return MEMORY[0x2822009F8](sub_248A5382C, 0, 0);
}

uint64_t sub_248A5382C()
{
  v19 = v0;
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_248A6D624();
  __swift_project_value_buffer(v2, qword_27EEC3C50);
  swift_unknownObjectRetain();
  v3 = sub_248A6D604();
  v4 = sub_248A6D814();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v17 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136446722;
    *(v5 + 4) = sub_248A50F9C(0xD000000000000018, 0x8000000248A6F650, v18);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_248A50F9C(0x293A5F28646461, 0xE700000000000000, v18);
    *(v5 + 22) = 2082;
    *(v0 + 16) = v17;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD5F0, &qword_248A6F690);
    v7 = sub_248A6D674();
    v9 = sub_248A50F9C(v7, v8, v18);

    *(v5 + 24) = v9;
    _os_log_impl(&dword_248A4A000, v3, v4, "%{public}s %{public}s: %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v6, -1, -1);
    MEMORY[0x24C1E2580](v5, -1, -1);
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  *(swift_task_alloc() + 16) = v11;

  os_unfair_lock_lock(v10 + 6);
  sub_248A555B4(&v10[4]);
  os_unfair_lock_unlock(v10 + 6);
  v12 = *(v0 + 56);

  *(v0 + 80) = 26;
  v13 = *(MEMORY[0x277D05108] + 4);
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_248A53B08;
  v15 = *(v0 + 48);

  return MEMORY[0x28215AB28](v0 + 80);
}

uint64_t sub_248A53B08()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A53C3C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t GuestUserHandoverService.remove(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = *v2;
  return MEMORY[0x2822009F8](sub_248A53C7C, 0, 0);
}

uint64_t sub_248A53C7C()
{
  v21 = v0;
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_248A6D624();
  __swift_project_value_buffer(v2, qword_27EEC3C50);
  swift_unknownObjectRetain();
  v3 = sub_248A6D604();
  v4 = sub_248A6D814();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v19 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446722;
    *(v5 + 4) = sub_248A50F9C(0xD000000000000018, 0x8000000248A6F650, v20);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_248A50F9C(0x5F2865766F6D6572, 0xEA0000000000293ALL, v20);
    *(v5 + 22) = 2082;
    *(v0 + 16) = v19;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD5F0, &qword_248A6F690);
    v7 = sub_248A6D674();
    v9 = sub_248A50F9C(v7, v8, v20);

    *(v5 + 24) = v9;
    _os_log_impl(&dword_248A4A000, v3, v4, "%{public}s %{public}s: %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v6, -1, -1);
    MEMORY[0x24C1E2580](v5, -1, -1);
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  *(swift_task_alloc() + 16) = v11;

  os_unfair_lock_lock((v10 + 24));
  sub_248A555D0((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  v12 = *(v0 + 56);

  os_unfair_lock_lock((v10 + 24));
  v13 = *(*(v10 + 16) + 16);
  os_unfair_lock_unlock((v10 + 24));
  if (v13)
  {
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 80) = 27;
    v16 = *(MEMORY[0x277D05108] + 4);
    v17 = swift_task_alloc();
    *(v0 + 64) = v17;
    *v17 = v0;
    v17[1] = sub_248A53FB8;
    v18 = *(v0 + 48);

    return MEMORY[0x28215AB28](v0 + 80);
  }
}

uint64_t sub_248A53FB8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A559D0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t GuestUserHandoverService.sendGuestUserAccessResponse(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  *(v2 + 72) = *a1;
  *(v2 + 88) = v3;
  *(v2 + 104) = *(a1 + 32);
  *(v2 + 66) = *(a1 + 48);
  *(v2 + 120) = *v1;
  return MEMORY[0x2822009F8](sub_248A5412C, 0, 0);
}

uint64_t sub_248A5412C()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 66);
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = sub_248A6D624();
  __swift_project_value_buffer(v7, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD00000000000001FLL, 0x8000000248A72B70);
  *(v0 + 65) = 17;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 64) = v13;
  sub_248A555EC(v6, v5, v4, v3, v2, v1, v13);
  v8 = *(MEMORY[0x277D050F0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  v10 = sub_248A5563C();
  *v9 = v0;
  v9[1] = sub_248A542D4;
  v11 = *(v0 + 120);

  return MEMORY[0x28215AB10](v0 + 65, v0 + 16, &type metadata for GuestUserRemoteUnlockResponse, v10);
}

uint64_t sub_248A542D4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(v2 + 136) = v0;

  sub_248A55690(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A5448C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_248A544C8()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = sub_248A6D624();
  __swift_project_value_buffer(v1, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000016, 0x8000000248A72B90);
  *(v0 + 40) = 18;
  v2 = *(MEMORY[0x277D05108] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A545EC;
  v4 = *(v0 + 16);

  return MEMORY[0x28215AB28](v0 + 40);
}

uint64_t sub_248A545EC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A559D4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_248A54744()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = sub_248A6D624();
  __swift_project_value_buffer(v1, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000012, 0x8000000248A72BB0);
  *(v0 + 40) = 19;
  v2 = *(MEMORY[0x277D05108] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A545EC;
  v4 = *(v0 + 16);

  return MEMORY[0x28215AB28](v0 + 40);
}

uint64_t sub_248A5488C()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = sub_248A6D624();
  __swift_project_value_buffer(v1, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000012, 0x8000000248A72BD0);
  *(v0 + 40) = 20;
  v2 = *(MEMORY[0x277D05108] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A549B0;
  v4 = *(v0 + 16);

  return MEMORY[0x28215AB28](v0 + 40);
}

uint64_t sub_248A549B0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A54AE4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t GuestUserHandoverService.transportError(_:)(_BYTE *a1)
{
  *(v2 + 42) = *a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_248A54B28, 0, 0);
}

uint64_t sub_248A54B28()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = sub_248A6D624();
  __swift_project_value_buffer(v2, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000012, 0x8000000248A72BF0);
  *(v0 + 40) = 21;
  *(v0 + 41) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  v5 = sub_248A556F8();
  *v4 = v0;
  v4[1] = sub_248A549B0;
  v6 = *(v0 + 16);

  return MEMORY[0x28215AB10](v0 + 40, v0 + 41, &type metadata for GuestUserAccessError, v5);
}

uint64_t GuestUserHandoverService.replayRequest(requestConfiguration:)(void *a1)
{
  v3 = *v1;
  *(v2 + 24) = *a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_248A54CA0, 0, 0);
}

uint64_t sub_248A54CA0()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A6D624();
  __swift_project_value_buffer(v2, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000024, 0x8000000248A72C10);
  *(v0 + 56) = 22;
  *(v0 + 16) = v1;
  v3 = *(MEMORY[0x277D050F0] + 4);

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = sub_248A5574C();
  *v4 = v0;
  v4[1] = sub_248A54E04;
  v6 = *(v0 + 32);

  return MEMORY[0x28215AB10](v0 + 56, v0 + 16, &type metadata for GuestUserRemoteUnlockRequestConfiguration.Version1, v5);
}

uint64_t sub_248A54E04()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  v4 = v3[2];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A54F40, 0, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t GuestUserHandoverService.replayRequest(requestConfiguration:)(_OWORD *a1)
{
  *(v2 + 32) = *a1;
  *(v2 + 48) = *v1;
  return MEMORY[0x2822009F8](sub_248A54F84, 0, 0);
}

uint64_t sub_248A54F84()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_248A6D624();
  __swift_project_value_buffer(v3, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000024, 0x8000000248A72C10);
  *(v0 + 72) = 25;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_248A557A0(v2, v1);
  v4 = *(MEMORY[0x277D050F0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = sub_248A557F4();
  *v5 = v0;
  v5[1] = sub_248A550EC;
  v7 = *(v0 + 48);

  return MEMORY[0x28215AB10](v0 + 72, v0 + 16, &type metadata for GuestUserRemoteUnlockRequestConfiguration.Version2, v6);
}

uint64_t sub_248A550EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  v2[8] = v0;

  sub_248A55848(v2[2], v2[3]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A5524C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_248A55288()
{
  if (qword_27EEBD440 != -1)
  {
    swift_once();
  }

  v1 = sub_248A6D624();
  __swift_project_value_buffer(v1, qword_27EEC3C50);
  sub_248A5BCBC(0xD00000000000008ALL, 0x8000000248A72AE0, 0xD000000000000010, 0x8000000248A72C40);
  *(v0 + 40) = 23;
  v2 = *(MEMORY[0x277D05108] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_248A545EC;
  v4 = *(v0 + 16);

  return MEMORY[0x28215AB28](v0 + 40);
}

uint64_t GuestUserHandoverService.isGuestUserSessionActive()()
{
  v2 = *v0;
  *(v1 + 33) = 28;
  v3 = *(MEMORY[0x277D05100] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248A55468;
  v5 = MEMORY[0x277D839B0];
  v6 = MEMORY[0x277D05190];

  return MEMORY[0x28215AB20](v1 + 32, v1 + 33, v5, v6);
}

uint64_t sub_248A55468()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_248A55598;
  }

  else
  {
    v3 = sub_248A5557C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A555EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

unint64_t sub_248A5563C()
{
  result = qword_27EEBD5F8;
  if (!qword_27EEBD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD5F8);
  }

  return result;
}

uint64_t sub_248A55690(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_248A556A8(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_248A556A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  return result;
}

unint64_t sub_248A556F8()
{
  result = qword_27EEBD870;
  if (!qword_27EEBD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD870);
  }

  return result;
}

unint64_t sub_248A5574C()
{
  result = qword_27EEBD600;
  if (!qword_27EEBD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD600);
  }

  return result;
}

uint64_t sub_248A557A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_248A557F4()
{
  result = qword_27EEBD850;
  if (!qword_27EEBD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD850);
  }

  return result;
}

uint64_t sub_248A55848(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_248A5585C(a1, a2);
  }

  return a1;
}

uint64_t sub_248A5585C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248A558D0(uint64_t *a1, int a2)
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

uint64_t sub_248A55918(uint64_t result, int a2, int a3)
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

uint64_t sub_248A55964(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v7 = *(v2 + 16);
  return (*(a2 + 8))(&v7, v4, ObjectType, a2);
}

uint64_t sub_248A55AC4()
{
  sub_248A55C04(&qword_27EEBD608);
  sub_248A55C04(&qword_27EEBD610);
  return sub_248A6D5E4();
}

uint64_t sub_248A55B50()
{
  sub_248A55C04(&qword_27EEBD608);
  sub_248A55C04(&qword_27EEBD610);
  return sub_248A6D5F4();
}

uint64_t sub_248A55C04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSSGuestUserModeAppRestrictionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompanionAppFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CompanionAppFeatures(_WORD *result, int a2, int a3)
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

unint64_t sub_248A55D34()
{
  result = qword_27EEBD620;
  if (!qword_27EEBD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD620);
  }

  return result;
}

uint64_t sub_248A55D88()
{
  sub_248A6DB34();
  MEMORY[0x24C1E1D60](0);
  return sub_248A6DB64();
}

uint64_t sub_248A55DCC()
{
  sub_248A6DB34();
  MEMORY[0x24C1E1D60](0);
  return sub_248A6DB64();
}

uint64_t GuestUserModeConfiguration.viewMirroringDevice.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 GuestUserModeConfiguration.init(viewMirroringDevice:appRestrictionState:allowedApplicationBundleIds:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1->n128_u64[1];
  a4->n128_u64[0] = a1->n128_u64[0];
  a4->n128_u64[1] = v4;
  result = a1[1];
  a4[1] = result;
  a4[2].n128_u64[0] = a2;
  a4[2].n128_u64[1] = a3;
  return result;
}

unint64_t sub_248A55EA0()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_248A55EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A57070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A55F28(uint64_t a1)
{
  v2 = sub_248A56230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A55F64(uint64_t a1)
{
  v2 = sub_248A56230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuestUserModeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD628, &qword_248A6F8A0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v19 = v1[5];
  v20 = v9;
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1;
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v10);
  sub_248A56230();

  sub_248A6DB84();
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = 0;
  sub_248A4F8C8();
  v15 = v21;
  sub_248A6DA74();

  if (v15)
  {
    return (*(v22 + 8))(v14, v3);
  }

  v17 = v19;
  v18 = v22;
  v23 = v20;
  v27 = 1;
  type metadata accessor for DSSGuestUserModeAppRestrictionState(0);
  sub_248A55C04(&qword_27EEBD610);
  sub_248A6DA74();
  v23 = v17;
  v27 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD638, &qword_248A6F8A8);
  sub_248A5657C(&qword_27EEBD640);
  sub_248A6DA74();
  return (*(v18 + 8))(v14, v3);
}

unint64_t sub_248A56230()
{
  result = qword_27EEBD630;
  if (!qword_27EEBD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD630);
  }

  return result;
}

uint64_t GuestUserModeConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD648, &qword_248A6F8B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A56230();
  sub_248A6DB74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_248A4F874();
  sub_248A6DA04();
  v11 = v22;
  v12 = v24;
  v20 = v23;
  v21 = v25;
  type metadata accessor for DSSGuestUserModeAppRestrictionState(0);
  v26 = 1;
  sub_248A55C04(&qword_27EEBD608);
  sub_248A6DA04();
  v18 = v12;
  v19 = v11;
  v13 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD638, &qword_248A6F8A8);
  v26 = 2;
  sub_248A5657C(&qword_27EEBD650);
  sub_248A6DA04();
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  v15 = v22;
  v17 = v20;
  *a2 = v19;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v13;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_248A5657C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEBD638, &qword_248A6F8A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A5661C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_248A6DB34();

    sub_248A6D6A4();
    v17 = sub_248A6DB64();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_248A6DAB4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248A567D8()
{
  sub_248A57198();
  sub_248A571EC();
  return sub_248A6D5E4();
}

uint64_t sub_248A5682C()
{
  sub_248A57198();
  sub_248A571EC();
  return sub_248A6D5F4();
}

unint64_t GuestUserModeConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_248A6D8B4();

  MEMORY[0x24C1E18E0](v1, v2);
  MEMORY[0x24C1E18E0](2108704, 0xE300000000000000);
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x24C1E18E0](v7, v3);

  MEMORY[0x24C1E18E0](41, 0xE100000000000000);
  MEMORY[0x24C1E18E0](0xD000000000000014, 0x8000000248A72940);

  MEMORY[0x24C1E18E0](8251, 0xE200000000000000);
  MEMORY[0x24C1E18E0](0xD000000000000015, 0x8000000248A72CE0);

  sub_248A6D8B4();

  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E55;
  if (!v6)
  {
    v9 = 0xD000000000000010;
    v8 = 0x8000000248A72D80;
  }

  if (v6 == 1)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = v9;
  }

  if (v6 == 1)
  {
    v11 = 0x8000000248A72D60;
  }

  else
  {
    v11 = v8;
  }

  MEMORY[0x24C1E18E0](v10, v11);

  MEMORY[0x24C1E18E0](8251, 0xE200000000000000);

  MEMORY[0x24C1E18E0](0xD000000000000015, 0x8000000248A72D20);

  sub_248A6D8B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD638, &qword_248A6F8A8);
  sub_248A56CA8();
  sub_248A56D0C();
  v12 = sub_248A6D704();
  v14 = v13;

  MEMORY[0x24C1E18E0](v12, v14);

  MEMORY[0x24C1E18E0](0xD000000000000015, 0x8000000248A72D40);

  return 0xD00000000000001DLL;
}

uint64_t _s21DeviceSharingServices26GuestUserModeConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_248A6DAB4() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6 || (v2 != v7 || v3 != v6) && (sub_248A6DAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 != v9)
  {
    return 0;
  }

  return sub_248A5661C(v5, v8);
}

unint64_t sub_248A56CA8()
{
  result = qword_27EEBD658;
  if (!qword_27EEBD658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEBD638, &qword_248A6F8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD658);
  }

  return result;
}

unint64_t sub_248A56D0C()
{
  result = qword_27EEBD660;
  if (!qword_27EEBD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD660);
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

uint64_t sub_248A56D74(uint64_t a1, int a2)
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

uint64_t sub_248A56DBC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for GuestUserModeConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GuestUserModeConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_248A56F6C()
{
  result = qword_27EEBD668;
  if (!qword_27EEBD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD668);
  }

  return result;
}

unint64_t sub_248A56FC4()
{
  result = qword_27EEBD670;
  if (!qword_27EEBD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD670);
  }

  return result;
}

unint64_t sub_248A5701C()
{
  result = qword_27EEBD678;
  if (!qword_27EEBD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD678);
  }

  return result;
}

uint64_t sub_248A57070(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000248A72DA0 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000248A72DC0 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000248A72DE0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_248A6DAB4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_248A57198()
{
  result = qword_27EEBD680;
  if (!qword_27EEBD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD680);
  }

  return result;
}

unint64_t sub_248A571EC()
{
  result = qword_27EEBD688;
  if (!qword_27EEBD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD688);
  }

  return result;
}

uint64_t DSSGuestUserModeState.description.getter(uint64_t a1)
{
  v1 = 0x64656C62616E45;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736944;
  }
}

uint64_t sub_248A572BC()
{
  v1 = *v0;
  v2 = 0x64656C62616E45;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x64656C6261736944;
  }
}

uint64_t DSSGuestProfileState.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 0x64656C62616E45;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736944;
  }
}

uint64_t sub_248A57394()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 0x64656C62616E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736944;
  }
}

unint64_t DSSGuestUserModeAppRestrictionState.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_248A57454()
{
  v1 = 0x6E776F6E6B6E55;
  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 == 1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t DSSGuestType.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 0x6172656D65687045;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x676E697473697845;
  }
}

uint64_t sub_248A5752C()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 0x6172656D65687045;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E697473697845;
  }
}

uint64_t sub_248A575AC(uint64_t a1)
{
  v2 = sub_248A57C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A575E8(uint64_t a1)
{
  v2 = sub_248A57C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A57624()
{
  if (*v0)
  {
    result = 0x6465776F6C6C61;
  }

  else
  {
    result = 0x64656E696C636564;
  }

  *v0;
  return result;
}

uint64_t sub_248A57660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656E696C636564 && a2 == 0xE800000000000000;
  if (v6 || (sub_248A6DAB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_248A6DAB4();

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

uint64_t sub_248A5773C(uint64_t a1)
{
  v2 = sub_248A57BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A57778(uint64_t a1)
{
  v2 = sub_248A57BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A577B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_248A6DAB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_248A57834(uint64_t a1)
{
  v2 = sub_248A57C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A57870(uint64_t a1)
{
  v2 = sub_248A57C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuestUserRemoteUnlockResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD690, &qword_248A6FBC0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD698, &qword_248A6FBC8);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6A0, &qword_248A6FBD0);
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35);
  v14 = &v24 - v13;
  v15 = v1[1];
  v34 = *v1;
  v16 = v1[3];
  v28 = v1[2];
  v29 = v15;
  v17 = v1[5];
  v26 = v1[4];
  v27 = v16;
  v25 = v17;
  v18 = *(v1 + 48);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A57BF4();
  sub_248A6DB84();
  if (v18)
  {
    LOBYTE(v36) = 1;
    sub_248A57C48();
    v20 = v35;
    sub_248A6DA24();
    v36 = v34;
    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = v26;
    v41 = v25;
    sub_248A571EC();
    v21 = v33;
    sub_248A6DA74();
    (*(v32 + 8))(v6, v21);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_248A57C9C();
    v20 = v35;
    sub_248A6DA24();
    LOBYTE(v36) = v34;
    sub_248A57CF0();
    v22 = v31;
    sub_248A6DA44();
    (*(v30 + 8))(v10, v22);
  }

  return (*(v11 + 8))(v14, v20);
}

unint64_t sub_248A57BF4()
{
  result = qword_27EEBD6A8;
  if (!qword_27EEBD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6A8);
  }

  return result;
}

unint64_t sub_248A57C48()
{
  result = qword_27EEBD6B0;
  if (!qword_27EEBD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6B0);
  }

  return result;
}

unint64_t sub_248A57C9C()
{
  result = qword_27EEBD6B8;
  if (!qword_27EEBD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6B8);
  }

  return result;
}

unint64_t sub_248A57CF0()
{
  result = qword_27EEBD880;
  if (!qword_27EEBD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD880);
  }

  return result;
}

uint64_t GuestUserRemoteUnlockResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6C0, &qword_248A6FBD8);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6C8, &qword_248A6FBE0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32[-v9];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6D0, &qword_248A6FBE8);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v37);
  v14 = &v32[-v13];
  v16 = a1[3];
  v15 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_248A57BF4();
  v17 = v38;
  sub_248A6DB74();
  if (!v17)
  {
    v38 = v11;
    v18 = v36;
    v19 = sub_248A6DA14();
    if (*(v19 + 16) == 1)
    {
      v20 = v37;
      v33 = *(v19 + 32);
      if (v33)
      {
        LOBYTE(v39) = 1;
        sub_248A57C48();
        sub_248A6D9A4();
        sub_248A57198();
        sub_248A6DA04();
        (*(v35 + 8))(v6, v3);
        (*(v38 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v22 = v39;
        v21 = v40;
        v23 = v41;
        v24 = v42;
        v25 = v43;
      }

      else
      {
        LOBYTE(v39) = 0;
        sub_248A57C9C();
        sub_248A6D9A4();
        sub_248A58228();
        sub_248A6D9D4();
        (*(v34 + 8))(v10, v7);
        (*(v38 + 8))(v14, v20);
        swift_unknownObjectRelease();
        v21 = 0;
        v24 = 0;
        v25 = 0;
        v22 = v39;
        v23 = 0uLL;
      }

      *v18 = v22;
      *(v18 + 8) = v21;
      *(v18 + 16) = v23;
      *(v18 + 32) = v24;
      *(v18 + 40) = v25;
      *(v18 + 48) = v33;
    }

    else
    {
      v26 = sub_248A6D8E4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6D8, &qword_248A6FBF0) + 48);
      *v28 = &type metadata for GuestUserRemoteUnlockResponse;
      v30 = v37;
      sub_248A6D9B4();
      sub_248A6D8D4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v38 + 8))(v14, v30);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_248A58228()
{
  result = qword_27EEBD6E0;
  if (!qword_27EEBD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6E0);
  }

  return result;
}

uint64_t sub_248A5827C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248A582B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248A5831C()
{
  sub_248A58BD8();
  sub_248A58C2C();
  return sub_248A6D5E4();
}

uint64_t sub_248A58370()
{
  sub_248A58BD8();
  sub_248A58C2C();
  return sub_248A6D5F4();
}

unint64_t GuestUserRemoteUnlockResponse.description.getter()
{
  v1 = 0xD000000000000027;
  if (*(v0 + 48) == 1)
  {
    v3 = *(v0 + 4);
    v2 = *(v0 + 5);
    v6 = *v0;
    v7 = v0[1];
    sub_248A6D8B4();

    v4 = GuestUserModeConfiguration.description.getter();
    MEMORY[0x24C1E18E0](v4);

    return 0xD00000000000003BLL;
  }

  return v1;
}

uint64_t _s21DeviceSharingServices29GuestUserRemoteUnlockResponseO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v28 = v3;
  v29 = *a1;
  v26 = v5;
  v27 = v4;
  if ((v7 & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      v19 = *(a2 + 32);
      v20 = *(a2 + 8);
      sub_248A556A8(v29, v2, v4, v3, v5, v6, 0);
      sub_248A556A8(v9, v20, v10, v11, v19, v13, 0);
      if (v29 == 3)
      {
        if (v9 != 3)
        {
LABEL_10:
          v18 = 0;
          return v18 & 1;
        }
      }

      else if (v9 == 3 || v9 != v29)
      {
        goto LABEL_10;
      }

      v18 = 1;
      return v18 & 1;
    }

LABEL_9:
    v22 = v8;
    sub_248A555EC(v9, v8, v10, v11, v12, v13, v14);
    sub_248A556A8(v29, v2, v27, v28, v26, v6, v7);
    sub_248A556A8(v9, v22, v10, v11, v12, v13, v14);
    goto LABEL_10;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    v21 = *(a2 + 8);

    v8 = v21;
    goto LABEL_9;
  }

  v31[0] = *a1;
  v31[1] = v2;
  v25 = v11;
  v31[2] = v4;
  v31[3] = v3;
  v31[4] = v5;
  v31[5] = v6;
  v30[0] = v9;
  v30[1] = v8;
  v30[2] = v10;
  v30[3] = v11;
  v30[4] = v12;
  v30[5] = v13;
  v15 = v4;
  v16 = v11;
  v17 = v8;
  v24 = v8;
  sub_248A555EC(v9, v8, v10, v16, v12, v13, 1);
  sub_248A555EC(v29, v2, v15, v28, v5, v6, 1);
  sub_248A555EC(v9, v17, v10, v25, v12, v13, 1);
  sub_248A555EC(v29, v2, v27, v28, v5, v6, 1);
  v18 = _s21DeviceSharingServices26GuestUserModeConfigurationV2eeoiySbAC_ACtFZ_0(v31, v30);
  sub_248A556A8(v29, v2, v27, v28, v5, v6, 1);
  sub_248A556A8(v9, v24, v10, v25, v12, v13, 1);
  sub_248A556A8(v9, v24, v10, v25, v12, v13, 1);
  sub_248A556A8(v29, v2, v27, v28, v5, v6, 1);
  return v18 & 1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_248A587CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248A58808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_248A58858(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_248A588C4()
{
  result = qword_27EEBD6E8;
  if (!qword_27EEBD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6E8);
  }

  return result;
}

unint64_t sub_248A5891C()
{
  result = qword_27EEBD6F0;
  if (!qword_27EEBD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6F0);
  }

  return result;
}

unint64_t sub_248A58974()
{
  result = qword_27EEBD6F8;
  if (!qword_27EEBD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD6F8);
  }

  return result;
}

unint64_t sub_248A589CC()
{
  result = qword_27EEBD700;
  if (!qword_27EEBD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD700);
  }

  return result;
}

unint64_t sub_248A58A24()
{
  result = qword_27EEBD708;
  if (!qword_27EEBD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD708);
  }

  return result;
}

unint64_t sub_248A58A7C()
{
  result = qword_27EEBD710;
  if (!qword_27EEBD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD710);
  }

  return result;
}

unint64_t sub_248A58AD4()
{
  result = qword_27EEBD718;
  if (!qword_27EEBD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD718);
  }

  return result;
}

unint64_t sub_248A58B2C()
{
  result = qword_27EEBD720;
  if (!qword_27EEBD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD720);
  }

  return result;
}

unint64_t sub_248A58B84()
{
  result = qword_27EEBD728;
  if (!qword_27EEBD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD728);
  }

  return result;
}

unint64_t sub_248A58BD8()
{
  result = qword_27EEBD730;
  if (!qword_27EEBD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD730);
  }

  return result;
}

unint64_t sub_248A58C2C()
{
  result = qword_27EEBD738;
  if (!qword_27EEBD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD738);
  }

  return result;
}

unint64_t sub_248A58CAC()
{
  v1 = 0x536B736944776F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_248A58D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A59E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A58D3C(uint64_t a1)
{
  v2 = sub_248A5930C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A58D78(uint64_t a1)
{
  v2 = sub_248A5930C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A58DB4(uint64_t a1)
{
  v2 = sub_248A593B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A58DF0(uint64_t a1)
{
  v2 = sub_248A593B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A58E2C(uint64_t a1)
{
  v2 = sub_248A59360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A58E68(uint64_t a1)
{
  v2 = sub_248A59360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A58EA4(uint64_t a1)
{
  v2 = sub_248A59408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A58EE0(uint64_t a1)
{
  v2 = sub_248A59408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuestUserAccessError.hashValue.getter()
{
  v1 = *v0;
  sub_248A6DB34();
  MEMORY[0x24C1E1D60](v1);
  return sub_248A6DB64();
}

uint64_t GuestUserAccessError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD740, &qword_248A700D0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD748, &qword_248A700D8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD750, &qword_248A700E0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD758, &qword_248A700E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A5930C();
  sub_248A6DB84();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_248A593B4();
      v12 = v26;
      sub_248A6DA24();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_248A59360();
      v12 = v29;
      sub_248A6DA24();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_248A59408();
    sub_248A6DA24();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_248A5930C()
{
  result = qword_27EEBD760;
  if (!qword_27EEBD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD760);
  }

  return result;
}

unint64_t sub_248A59360()
{
  result = qword_27EEBD768;
  if (!qword_27EEBD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD768);
  }

  return result;
}

unint64_t sub_248A593B4()
{
  result = qword_27EEBD770;
  if (!qword_27EEBD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD770);
  }

  return result;
}

unint64_t sub_248A59408()
{
  result = qword_27EEBD778;
  if (!qword_27EEBD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD778);
  }

  return result;
}

uint64_t GuestUserAccessError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD780, &qword_248A700F0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD788, &qword_248A700F8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD790, &qword_248A70100);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD798, &unk_248A70108);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_248A5930C();
  v20 = v43;
  sub_248A6DB74();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_248A6DA14();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_248A5827C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_248A6D8E4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6D8, &qword_248A6FBF0) + 48);
      *v30 = &type metadata for GuestUserAccessError;
      sub_248A6D9B4();
      sub_248A6D8D4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_248A593B4();
          sub_248A6D9A4();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_248A59360();
          v33 = v22;
          sub_248A6D9A4();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_248A59408();
        sub_248A6D9A4();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_248A599D0()
{
  result = qword_27EEBD7A0;
  if (!qword_27EEBD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7A0);
  }

  return result;
}

uint64_t sub_248A59A54()
{
  sub_248A58228();
  sub_248A57CF0();
  return sub_248A6D5E4();
}

uint64_t sub_248A59AA8()
{
  sub_248A58228();
  sub_248A57CF0();
  return sub_248A6D5F4();
}

unint64_t sub_248A59B78()
{
  result = qword_27EEBD7A8;
  if (!qword_27EEBD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7A8);
  }

  return result;
}

unint64_t sub_248A59BD0()
{
  result = qword_27EEBD7B0;
  if (!qword_27EEBD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7B0);
  }

  return result;
}

unint64_t sub_248A59C28()
{
  result = qword_27EEBD7B8;
  if (!qword_27EEBD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7B8);
  }

  return result;
}

unint64_t sub_248A59C80()
{
  result = qword_27EEBD7C0;
  if (!qword_27EEBD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7C0);
  }

  return result;
}

unint64_t sub_248A59CD8()
{
  result = qword_27EEBD7C8;
  if (!qword_27EEBD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7C8);
  }

  return result;
}

unint64_t sub_248A59D30()
{
  result = qword_27EEBD7D0;
  if (!qword_27EEBD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7D0);
  }

  return result;
}

unint64_t sub_248A59D88()
{
  result = qword_27EEBD7D8;
  if (!qword_27EEBD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7D8);
  }

  return result;
}

unint64_t sub_248A59DE0()
{
  result = qword_27EEBD7E0;
  if (!qword_27EEBD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7E0);
  }

  return result;
}

unint64_t sub_248A59E38()
{
  result = qword_27EEBD7E8;
  if (!qword_27EEBD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD7E8);
  }

  return result;
}

uint64_t sub_248A59E8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000248A72EC0 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536B736944776F6CLL && a2 == 0xEC00000065636170 || (sub_248A6DAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000248A72EE0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_248A6DAB4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ObserversTable.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD810, &qword_248A705D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a1 = result;
  return result;
}

void sub_248A5A02C(os_unfair_lock_s **a1)
{
  v1 = *a1;
  os_unfair_lock_lock(*a1 + 6);
  v2 = *&v1[4]._os_unfair_lock_opaque;
  v21 = &v1[4];

  v22 = v1;
  os_unfair_lock_unlock(v1 + 6);
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v9 = v3;
LABEL_15:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = (v9 << 9) | (8 * v12);
      v14 = *(*(v2 + 48) + v13);
      sub_248A5A594(*(v2 + 56) + v13, v25);
      v23 = v14;
      sub_248A5A5CC(v25, v24);
LABEL_16:
      sub_248A5A604(&v23, &v26);
      v15 = v26;
      if (!v26)
      {

        if (*(v8 + 2))
        {
          MEMORY[0x28223BE20](v20);

          os_unfair_lock_lock(v22 + 6);
          sub_248A5BCA4(v21);
          os_unfair_lock_unlock(v22 + 6);
        }

        return;
      }

      sub_248A5A5CC(&v27, v25);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      swift_unknownObjectRetain();
      ObjectType = swift_getObjectType();
      v17 = swift_conformsToProtocol2();
      if (v17)
      {
        v23 = 3;
        memset(v24, 0, 41);
        (*(v17 + 8))(&v23, ObjectType, v17);
      }

      swift_unknownObjectRelease_n();
      sub_248A5B4C4(v25);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_248A5B3C0(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_248A5B3C0((v18 > 1), v19 + 1, 1, v8);
    }

    sub_248A5B4C4(v25);
    *(v8 + 2) = v19 + 1;
    *&v8[8 * v19 + 32] = v15;
  }

  while (v6);
LABEL_7:
  if (v7 <= v3 + 1)
  {
    v10 = v3 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v23 = 0;
      *&v24[0] = 0;
      v3 = v11;
      goto LABEL_16;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void ObserversTable.enumerate(_:)(void (*a1)(void))
{
  v2 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  v3 = *&v2[4]._os_unfair_lock_opaque;
  v20 = &v2[4];

  v21 = v2;
  os_unfair_lock_unlock(v2 + 6);
  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v10 = v4;
LABEL_15:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = (v10 << 9) | (8 * v13);
      v15 = *(*(v3 + 48) + v14);
      sub_248A5A594(*(v3 + 56) + v14, v23);
      v24 = v15;
      sub_248A5A5CC(v23, &v25);
LABEL_16:
      sub_248A5A604(&v24, &v26);
      v16 = v26;
      if (!v26)
      {

        if (*(v9 + 2))
        {
          MEMORY[0x28223BE20](v19);

          os_unfair_lock_lock(v21 + 6);
          sub_248A5B3A4(v20);
          os_unfair_lock_unlock(v21 + 6);
        }

        return;
      }

      sub_248A5A5CC(&v27, &v24);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      a1();
      swift_unknownObjectRelease();
      sub_248A5B4C4(&v24);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_248A5B3C0(0, *(v9 + 2) + 1, 1, v9);
    }

    v18 = *(v9 + 2);
    v17 = *(v9 + 3);
    if (v18 >= v17 >> 1)
    {
      v9 = sub_248A5B3C0((v17 > 1), v18 + 1, 1, v9);
    }

    sub_248A5B4C4(&v24);
    *(v9 + 2) = v18 + 1;
    *&v9[8 * v18 + 32] = v16;
  }

  while (v7);
LABEL_7:
  if (v8 <= v4 + 1)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v24 = 0;
      v25 = 0;
      v4 = v12;
      goto LABEL_16;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v4;
    if (v7)
    {
      v4 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_248A5A604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD7F0, &qword_248A705D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ObserversTable.add(_:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_248A5B4F4();
  os_unfair_lock_unlock(v1 + 6);
}

void ObserversTable.remove(_:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_248A555D0(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

BOOL ObserversTable.hasObservers.getter()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  v2 = *(*&v1[4]._os_unfair_lock_opaque + 16);
  os_unfair_lock_unlock(v1 + 6);
  return v2 != 0;
}

uint64_t ObserversTable.observerCount.getter()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_248A5A798(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v4[8] = 0;
  return sub_248A5A7E4(v4, a2);
}

uint64_t sub_248A5A7E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_248A5B7EC(a1);
    v5 = *v2;
    v6 = sub_248A5E1BC(a2);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      v10 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_248A5ED28();
        v12 = v16;
      }

      sub_248A5A5CC(*(v12 + 56) + 8 * v9, &v18);
      sub_248A5B854(v9, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v8 & 1) == 0;
    return sub_248A5B7EC(&v18);
  }

  else
  {
    sub_248A5A5CC(a1, &v18);
    v13 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    result = sub_248A5E7F4(&v18, a2, v14);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_248A5A8D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_248A5E1BC(a2);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_248A5ED28();
      v10 = v14;
    }

    sub_248A5A5CC(*(v10 + 56) + 8 * v7, &v12);
    sub_248A5B854(v7, v10);
    *a1 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v6 & 1) == 0;
  return sub_248A5B7EC(&v12);
}

Swift::Void __swiftcall ObserversTable.removeAll()()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  *&v1[4]._os_unfair_lock_opaque = MEMORY[0x277D84F98];

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t ObserversTable.enumerate(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v3[10] = *v2;
  return MEMORY[0x2822009F8](sub_248A5AA04, 0, 0);
}

void sub_248A5AA04()
{
  v1 = *(v0 + 80);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;

  os_unfair_lock_unlock((v1 + 24));
  v3 = 0;
  v4 = *(v2 + 32);
  *(v0 + 144) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);
  v8 = MEMORY[0x277D84F90];
  *(v0 + 96) = MEMORY[0x277D84F90];
  if (v7)
  {
    while (1)
    {
      v9 = *(v0 + 88);
LABEL_14:
      v14 = (v7 - 1) & v7;
      v15 = (v3 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(v9 + 48) + v15);
      sub_248A5A594(*(v9 + 56) + v15, v0 + 48);
      *(v0 + 32) = v16;
      sub_248A5A5CC(v0 + 48, v0 + 40);
      v12 = v3;
LABEL_15:
      *(v0 + 104) = v14;
      *(v0 + 112) = v12;
      sub_248A5A604(v0 + 32, v0 + 16);
      v17 = *(v0 + 16);
      if (!v17)
      {
        break;
      }

      sub_248A5A5CC(v0 + 24, v0 + 56);
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 120) = Strong;
      if (Strong)
      {
        v28 = (*(v0 + 64) + **(v0 + 64));
        v23 = *(*(v0 + 64) + 4);
        v24 = Strong;
        v25 = swift_task_alloc();
        *(v0 + 128) = v25;
        *v25 = v0;
        v25[1] = sub_248A5AD78;
        v26 = *(v0 + 72);

        v28(v24);
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_248A5B3C0(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_248A5B3C0((v19 > 1), v20 + 1, 1, v8);
      }

      sub_248A5B4C4(v0 + 56);
      *(v8 + 2) = v20 + 1;
      *&v8[8 * v20 + 32] = v17;
      v7 = *(v0 + 104);
      v3 = *(v0 + 112);
      *(v0 + 96) = v8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v0 + 88);

    if (*(v8 + 2))
    {
      v22 = *(v0 + 80);
      *(swift_task_alloc() + 16) = v8;

      os_unfair_lock_lock(v22 + 6);
      sub_248A5BCA4(&v22[4]);
      os_unfair_lock_unlock(v22 + 6);
    }

    v27 = *(v0 + 8);

    v27();
  }

  else
  {
LABEL_6:
    v10 = ((1 << *(v0 + 144)) + 63) >> 6;
    if (v10 <= (v3 + 1))
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 144)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v14 = 0;
        *(v0 + 32) = 0;
        *(v0 + 40) = 0;
        goto LABEL_15;
      }

      v9 = *(v0 + 88);
      v7 = *(v9 + 8 * v13 + 64);
      ++v3;
      if (v7)
      {
        v3 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_248A5AD78()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_248A5B1C8;
  }

  else
  {
    v3 = sub_248A5AE8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_248A5AE8C()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  sub_248A5B4C4(v0 + 56);
  v2 = *(v0 + 136);
  for (i = *(v0 + 96); ; *&i[8 * v17 + 32] = v14)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    *(v0 + 96) = i;
    if (!v4)
    {
      v7 = ((1 << *(v0 + 144)) + 63) >> 6;
      if (v7 <= (v5 + 1))
      {
        v8 = v5 + 1;
      }

      else
      {
        v8 = ((1 << *(v0 + 144)) + 63) >> 6;
      }

      v9 = v8 - 1;
      while (1)
      {
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v10 >= v7)
        {
          v11 = 0;
          *(v0 + 32) = 0;
          *(v0 + 40) = 0;
          goto LABEL_13;
        }

        v6 = *(v0 + 88);
        v4 = *(v6 + 8 * v10 + 64);
        ++v5;
        if (v4)
        {
          v5 = v10;
          goto LABEL_12;
        }
      }

      __break(1u);
      return;
    }

    v6 = *(v0 + 88);
LABEL_12:
    v11 = (v4 - 1) & v4;
    v12 = (v5 << 9) | (8 * __clz(__rbit64(v4)));
    v13 = *(*(v6 + 48) + v12);
    sub_248A5A594(*(v6 + 56) + v12, v0 + 48);
    *(v0 + 32) = v13;
    sub_248A5A5CC(v0 + 48, v0 + 40);
    v9 = v5;
LABEL_13:
    *(v0 + 104) = v11;
    *(v0 + 112) = v9;
    sub_248A5A604(v0 + 32, v0 + 16);
    v14 = *(v0 + 16);
    if (!v14)
    {
      break;
    }

    sub_248A5A5CC(v0 + 24, v0 + 56);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {
      v25 = (*(v0 + 64) + **(v0 + 64));
      v20 = *(*(v0 + 64) + 4);
      v21 = Strong;
      v22 = swift_task_alloc();
      *(v0 + 128) = v22;
      *v22 = v0;
      v22[1] = sub_248A5AD78;
      v23 = *(v0 + 72);

      v25(v21);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_248A5B3C0(0, *(i + 2) + 1, 1, i);
    }

    v17 = *(i + 2);
    v16 = *(i + 3);
    if (v17 >= v16 >> 1)
    {
      i = sub_248A5B3C0((v16 > 1), v17 + 1, 1, i);
    }

    sub_248A5B4C4(v0 + 56);
    *(i + 2) = v17 + 1;
  }

  v18 = *(v0 + 88);

  if (*(i + 2))
  {
    v19 = *(v0 + 80);
    *(swift_task_alloc() + 16) = i;

    os_unfair_lock_lock(v19 + 6);
    sub_248A5BCA4(&v19[4]);
    os_unfair_lock_unlock(v19 + 6);
    if (v2)
    {
      return;
    }
  }

  v24 = *(v0 + 8);

  v24();
}

uint64_t sub_248A5B1C8()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  swift_unknownObjectRelease();

  sub_248A5B4C4((v0 + 7));
  if (*(v2 + 16))
  {
    v4 = v0[12];
    v5 = v0[10];
    *(swift_task_alloc() + 16) = v4;

    os_unfair_lock_lock(v5 + 6);
    sub_248A5BCA4(&v5[4]);
    os_unfair_lock_unlock(v5 + 6);
    v6 = v0[12];
  }

  v7 = v0[12];

  v8 = v0[1];
  v9 = v0[17];

  return v8();
}

uint64_t sub_248A5B2C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = sub_248A5E1BC(*v4);
      v8 = v7;
      if (v7)
      {
        v9 = v6;
        v10 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *v3;
        v13 = *v3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_248A5ED28();
          v12 = v13;
        }

        sub_248A5A5CC(*(v12 + 56) + 8 * v9, &v14);
        sub_248A5B854(v9, v12);
        *v3 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = (v8 & 1) == 0;
      result = sub_248A5B7EC(&v14);
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

char *sub_248A5B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD808, "T?");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_248A5B4F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectWeakInit();
  v3[8] = 0;
  return sub_248A5A7E4(v3, v1);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ObserversTable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ObserversTable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuestUserModeStateWrapper(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GuestUserModeStateWrapper(uint64_t result, int a2, int a3)
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

char *sub_248A5B6E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD7F8, "N?");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_248A5B7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD800, "T?");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248A5B854(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248A6D844() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_248A6DB24();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      result = v17 + 8 * v3;
      if (v3 < v6 || result >= v17 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_248A5B9E4(os_unfair_lock_s **a1, void (*a2)(uint64_t, uint64_t))
{
  v2 = *a1;
  os_unfair_lock_lock(*a1 + 6);
  v3 = *&v2[4]._os_unfair_lock_opaque;
  v23 = &v2[4];

  v24 = v2;
  os_unfair_lock_unlock(v2 + 6);
  v4 = 0;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v10 = v4;
LABEL_15:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = (v10 << 9) | (8 * v13);
      v15 = *(*(v3 + 48) + v14);
      sub_248A5A594(*(v3 + 56) + v14, v26);
      v27 = v15;
      sub_248A5A5CC(v26, &v28);
LABEL_16:
      sub_248A5A604(&v27, &v29);
      v16 = v29;
      if (!v29)
      {

        if (*(v9 + 2))
        {
          MEMORY[0x28223BE20](v22);

          os_unfair_lock_lock(v24 + 6);
          sub_248A5BCA4(v23);
          os_unfair_lock_unlock(v24 + 6);
        }

        return;
      }

      sub_248A5A5CC(&v30, &v27);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v18 = Strong;
      swift_unknownObjectRetain();
      swift_getObjectType();
      v19 = swift_conformsToProtocol2();
      if (v19)
      {
        a2(v18, v19);
      }

      swift_unknownObjectRelease_n();
      sub_248A5B4C4(&v27);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_248A5B3C0(0, *(v9 + 2) + 1, 1, v9);
    }

    v21 = *(v9 + 2);
    v20 = *(v9 + 3);
    if (v21 >= v20 >> 1)
    {
      v9 = sub_248A5B3C0((v20 > 1), v21 + 1, 1, v9);
    }

    sub_248A5B4C4(&v27);
    *(v9 + 2) = v21 + 1;
    *&v9[8 * v21 + 32] = v16;
  }

  while (v7);
LABEL_7:
  if (v8 <= v4 + 1)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v27 = 0;
      v28 = 0;
      v4 = v12;
      goto LABEL_16;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v4;
    if (v7)
    {
      v4 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_248A5BCBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_248A5BFE4(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_248A6D604();
  v7 = sub_248A6D814();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_248A50F9C(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_248A4A000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C1E2580](v9, -1, -1);
    MEMORY[0x24C1E2580](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_248A5BDFC()
{
  v0 = sub_248A6D624();
  __swift_allocate_value_buffer(v0, qword_281511370);
  __swift_project_value_buffer(v0, qword_281511370);
  return sub_248A6D614();
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

uint64_t sub_248A5BF6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248A6D624();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_248A6D614();
}

uint64_t sub_248A5BFE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_248A56D0C();
  v8 = (sub_248A6D834() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_248A5C240(46, 0xE100000000000000, a1, a2);
  v10 = sub_248A6D6F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x24C1E18B0](v10, v12, v14, v16);
  v19 = v18;

  sub_248A5C240(40, 0xE100000000000000, a3, a4);
  v20 = sub_248A6D6F4();
  v21 = MEMORY[0x24C1E18B0](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_248A6DAA4();
  MEMORY[0x24C1E18E0](v25);

  MEMORY[0x24C1E18E0](8285, 0xE200000000000000);
  MEMORY[0x24C1E18E0](v17, v19);

  MEMORY[0x24C1E18E0](14906, 0xE200000000000000);
  MEMORY[0x24C1E18E0](v21, v23);

  return 91;
}

unint64_t sub_248A5C240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_248A6D6E4() != a1 || v9 != a2)
  {
    v10 = sub_248A6DAB4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_248A6D6B4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void sub_248A5C330(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_281510D00 != -1)
  {
    swift_once();
  }

  v4 = sub_248A6D624();
  __swift_project_value_buffer(v4, qword_281511370);
  v5 = sub_248A6D604();
  v6 = sub_248A6D814();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    v9 = sub_248A6DBB4();
    v11 = sub_248A50F9C(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_248A50F9C(0xD000000000000022, 0x8000000248A731D0, &v15);
    _os_log_impl(&dword_248A4A000, v5, v6, "[%{public}s] %{public}s Remote Alert Deactivated.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v8, -1, -1);
    MEMORY[0x24C1E2580](v7, -1, -1);
  }

  v12 = v2 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate;
  v13 = *(v2 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate);
  if (v13)
  {
    v14 = *(v12 + 8);

    v13(a1);

    sub_248A5F250(v13);
  }

  else
  {
    __break(1u);
  }
}

id sub_248A5C5D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GuestUserHandoverSetupCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD810, &qword_248A705D0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 32) = v1;
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for RemoteAlertHandleObserver()) init];
  return v0;
}

uint64_t GuestUserHandoverSetupCoordinator.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD810, &qword_248A705D0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 32) = v1;
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for RemoteAlertHandleObserver()) init];
  return v0;
}

uint64_t GuestUserHandoverSetupCoordinator.ProxCardCompletionState.hashValue.getter()
{
  v1 = *v0;
  sub_248A6DB34();
  MEMORY[0x24C1E1D60](v1);
  return sub_248A6DB64();
}

uint64_t GuestUserHandoverSetupCoordinator.proxCardState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

void GuestUserHandoverSetupCoordinator.present(requestConfiguration:isRetrigger:)(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a1;
  swift_beginAccess();
  *(v2 + 16) = 0;
  if (qword_281510D00 != -1)
  {
    swift_once();
  }

  v7 = sub_248A6D624();
  __swift_project_value_buffer(v7, qword_281511370);
  sub_248A5BCBC(0xD0000000000000A1, 0x8000000248A72FA0, 0xD00000000000002ALL, 0x8000000248A73050);
  v8 = sub_248A6D604();
  v9 = sub_248A6D814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v37 = v11;
    *v10 = 136446722;
    v12 = sub_248A6DBB4();
    v14 = sub_248A50F9C(v12, v13, &v37);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_248A50F9C(0xD00000000000002ALL, 0x8000000248A73050, &v37);
    *(v10 + 22) = 1026;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&dword_248A4A000, v8, v9, "[%{public}s] %{public}s isRetrigger: %{BOOL,public}d.", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v11, -1, -1);
    MEMORY[0x24C1E2580](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD818, &qword_248A70688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A70670;
  *(inited + 32) = 0x6769727465527369;
  v16 = inited + 32;
  *(inited + 40) = 0xEB00000000726567;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = a2 & 1;
  v17 = sub_248A5F048(inited);
  swift_setDeallocating();
  sub_248A51A78(v16, &unk_27EEBD820, &qword_248A70690);
  *&v37 = v6;
  sub_248A5574C();
  sub_248A5F178();
  sub_248A5F1CC();
  v18 = sub_248A6D5E4();
  v38 = MEMORY[0x277CC9318];
  *&v37 = v18;
  *(&v37 + 1) = v19;
  v20 = v18;
  v21 = v19;
  sub_248A5F260(&v37, v36);
  sub_248A557A0(v20, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_248A5E914(v36, 0xD000000000000014, 0x8000000248A72F40, isUniquelyReferenced_nonNull_native);
  sub_248A5585C(v20, v21);
  v23 = sub_248A6D644();
  v24 = [objc_opt_self() identityForApplicationJobLabel_];

  v25 = [objc_allocWithZone(MEMORY[0x277D66BD8]) initWithSceneProvidingProcess:v24 configurationIdentifier:0];
  v26 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  sub_248A5CED4(v17);

  v27 = sub_248A6D634();

  [v26 setUserInfo_];

  v28 = [objc_opt_self() newHandleWithDefinition:v25 configurationContext:v26];
  v29 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  [v28 activateWithContext_];
  v30 = *(v3 + 3);
  v31 = *(v30 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_remoteAlertHandle);
  *(v30 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_remoteAlertHandle) = v28;

  v32 = (v30 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate);
  v33 = *(v30 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate);
  v34 = *(v30 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate + 8);
  *v32 = sub_248A5F220;
  v32[1] = v3;
  v35 = v28;
  sub_248A5F250(v33);
  [v35 registerObserver_];
}

{
  v3 = v2;
  v4 = *v2;
  v6 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  *(v2 + 16) = 0;
  if (qword_281510D00 != -1)
  {
    swift_once();
  }

  v7 = sub_248A6D624();
  __swift_project_value_buffer(v7, qword_281511370);
  sub_248A5BCBC(0xD0000000000000A1, 0x8000000248A72FA0, 0xD00000000000002ALL, 0x8000000248A73050);
  v8 = sub_248A6D604();
  v9 = sub_248A6D814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v39 = v11;
    *v10 = 136446722;
    v12 = sub_248A6DBB4();
    v14 = sub_248A50F9C(v12, v13, &v39);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_248A50F9C(0xD00000000000002ALL, 0x8000000248A73050, &v39);
    *(v10 + 22) = 1026;
    v15 = a2;
    *(v10 + 24) = a2 & 1;
    _os_log_impl(&dword_248A4A000, v8, v9, "[%{public}s] %{public}s isRetrigger: %{BOOL,public}d.", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v11, -1, -1);
    MEMORY[0x24C1E2580](v10, -1, -1);
  }

  else
  {

    v15 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD818, &qword_248A70688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A70670;
  *(inited + 32) = 0x6769727465527369;
  v17 = inited + 32;
  *(inited + 40) = 0xEB00000000726567;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v15 & 1;
  v18 = sub_248A5F048(inited);
  swift_setDeallocating();
  sub_248A51A78(v17, &unk_27EEBD820, &qword_248A70690);
  *&v39 = v6;
  *(&v39 + 1) = v5;
  sub_248A557F4();
  sub_248A5F270();
  sub_248A5F2C4();
  v19 = sub_248A6D5E4();
  v40 = MEMORY[0x277CC9318];
  *&v39 = v19;
  *(&v39 + 1) = v20;
  v21 = v19;
  v22 = v20;
  sub_248A5F260(&v39, v38);
  sub_248A557A0(v21, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_248A5E914(v38, 0xD000000000000018, 0x8000000248A72F60, isUniquelyReferenced_nonNull_native);
  sub_248A5585C(v21, v22);
  v24 = sub_248A6D644();
  v25 = [objc_opt_self() identityForApplicationJobLabel_];

  v26 = [objc_allocWithZone(MEMORY[0x277D66BD8]) initWithSceneProvidingProcess:v25 configurationIdentifier:0];
  v27 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  sub_248A5CED4(v18);

  v28 = sub_248A6D634();

  [v27 setUserInfo_];

  v29 = [objc_opt_self() newHandleWithDefinition:v26 configurationContext:v27];
  v30 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  [v29 activateWithContext_];
  v31 = *(v3 + 3);
  v32 = *(v31 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_remoteAlertHandle);
  *(v31 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_remoteAlertHandle) = v29;

  v33 = (v31 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate);
  v34 = *(v31 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate);
  v35 = *(v31 + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate + 8);
  *v33 = sub_248A5F220;
  v33[1] = v3;
  v36 = v29;
  sub_248A5F250(v34);
  [v36 registerObserver_];
}

uint64_t sub_248A5CED4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD918, &qword_248A70810);
    v2 = sub_248A6D984();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_248A519A8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_248A5F260(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_248A5F260(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_248A5F260(v32, v33);
    v17 = *(v2 + 40);
    result = sub_248A6D854();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_248A5F260(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_248A5D6C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_281510D00 != -1)
  {
    swift_once();
  }

  v5 = sub_248A6D624();
  __swift_project_value_buffer(v5, qword_281511370);
  v6 = sub_248A6D604();
  v7 = sub_248A6D814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_248A4A000, v6, v7, "Remote Alert Handle did deactivate handler.", v8, 2u);
    MEMORY[0x24C1E2580](v8, -1, -1);
  }

  sub_248A5BCBC(0xD0000000000000A1, 0x8000000248A72FA0, 0xD000000000000013, 0x8000000248A72C60);
  v10 = *(a2 + 32);

  a3(&v10);
}

Swift::Void __swiftcall GuestUserHandoverSetupCoordinator.invalidate()()
{
  if (qword_281510D00 != -1)
  {
    swift_once();
  }

  v0 = sub_248A6D624();
  __swift_project_value_buffer(v0, qword_281511370);
  sub_248A5BCBC(0xD0000000000000A1, 0x8000000248A72FA0, 0x6164696C61766E69, 0xEC00000029286574);
  v1 = sub_248A6D644();
  v2 = [objc_opt_self() identityForApplicationJobLabel_];

  v3 = [objc_allocWithZone(MEMORY[0x277D66BD8]) initWithSceneProvidingProcess:v2 configurationIdentifier:0];
  v22 = v3;
  v4 = [objc_opt_self() lookupHandlesForDefinition_];
  sub_248A5F318();
  v5 = sub_248A6D774();

  if (v5 >> 62)
  {
    v6 = sub_248A6D954();
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = &off_278F62000;
  v23 = v6;
  do
  {
    if (v8)
    {
      v10 = MEMORY[0x24C1E1AE0](v7, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = sub_248A6D604();
    v13 = sub_248A6D814();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v5;
      v15 = v9;
      v16 = swift_slowAlloc();
      v17 = v8;
      v18 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v11;
      *v18 = v11;
      v19 = v11;
      _os_log_impl(&dword_248A4A000, v12, v13, "Invalidating alert handler: %{public}@", v16, 0xCu);
      sub_248A51A78(v18, &qword_27EEBD530, &qword_248A6EFB0);
      v20 = v18;
      v8 = v17;
      MEMORY[0x24C1E2580](v20, -1, -1);
      v21 = v16;
      v9 = v15;
      v5 = v14;
      v6 = v23;
      MEMORY[0x24C1E2580](v21, -1, -1);
    }

    ++v7;

    [v11 v9[184]];
  }

  while (v6 != v7);
LABEL_14:
}

uint64_t GuestUserHandoverSetupCoordinator.addObserver(_:)()
{
  v1 = v0;
  v2 = *v0;
  if (qword_281510D00 != -1)
  {
    swift_once();
  }

  v3 = sub_248A6D624();
  __swift_project_value_buffer(v3, qword_281511370);
  swift_unknownObjectRetain();
  v4 = sub_248A6D604();
  v5 = sub_248A6D814();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136446722;
    v8 = sub_248A6DBB4();
    v10 = sub_248A50F9C(v8, v9, v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_248A50F9C(0x726573624F646461, 0xEF293A5F28726576, v17);
    *(v6 + 22) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD8A0, &qword_248A706B0);
    v11 = sub_248A6D674();
    v13 = sub_248A50F9C(v11, v12, v17);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_248A4A000, v4, v5, "[%{public}s] %{public}s — %{public}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v7, -1, -1);
    MEMORY[0x24C1E2580](v6, -1, -1);
  }

  v14 = v1[4];
  MEMORY[0x28223BE20](v15);

  os_unfair_lock_lock(v14 + 6);
  sub_248A555B4(&v14[4]);
  os_unfair_lock_unlock(v14 + 6);
}

uint64_t GuestUserHandoverSetupCoordinator.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t GuestUserHandoverSetupCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_248A5E1BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_248A6DB24();

  return sub_248A5EB3C(a1, v4);
}

unint64_t sub_248A5E200(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_248A6D854();

  return sub_248A5EBA8(a1, v5);
}

unint64_t sub_248A5E244(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_248A6DB34();
  sub_248A6D6A4();
  v6 = sub_248A6DB64();

  return sub_248A5EC70(a1, a2, v6);
}

uint64_t sub_248A5E2BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD928, &qword_248A70820);
  result = sub_248A6D974();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_248A5A5CC(v23, v34);
      }

      else
      {
        sub_248A5A594(v23, v34);
      }

      v24 = *(v8 + 40);
      result = sub_248A6DB24();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = sub_248A5A5CC(v34, *(v8 + 56) + v17);
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_248A5E53C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD920, &qword_248A70818);
  v36 = a2;
  result = sub_248A6D974();
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
        sub_248A5F260(v25, v37);
      }

      else
      {
        sub_248A519A8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_248A6DB34();
      sub_248A6D6A4();
      result = sub_248A6DB64();
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
      result = sub_248A5F260(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_248A5E7F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_248A5E1BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_248A5ED28();
      v9 = v17;
      goto LABEL_8;
    }

    sub_248A5E2BC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_248A5E1BC(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_248A6DAD4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * v9;

    return sub_248A5F694(a1, v21);
  }

  else
  {

    return sub_248A5EA64(v9, a2, a1, v20);
  }
}

_OWORD *sub_248A5E914(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_248A5E244(a2, a3);
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
      sub_248A5EEA4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_248A5E53C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_248A5E244(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_248A6DAD4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_248A5F260(a1, v23);
  }

  else
  {
    sub_248A5EAD0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_248A5EA64(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_248A5A5CC(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_248A5EAD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_248A5F260(a4, (a5[7] + 32 * a1));
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

unint64_t sub_248A5EB3C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_248A5EBA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_248A5F57C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1E1A80](v9, a1);
      sub_248A5F5D8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_248A5EC70(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_248A6DAB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_248A5ED28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD928, &qword_248A70820);
  v2 = *v0;
  v3 = sub_248A6D964();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_248A5A594(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_248A5A5CC(v19, *(v4 + 56) + v17);
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_248A5EEA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD920, &qword_248A70818);
  v2 = *v0;
  v3 = sub_248A6D964();
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
        sub_248A519A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_248A5F260(v25, (*(v4 + 56) + v22));
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

unint64_t sub_248A5F048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD920, &qword_248A70818);
    v3 = sub_248A6D984();
    v4 = a1 + 32;

    while (1)
    {
      sub_248A5F62C(v4, &v13, &unk_27EEBD820, &qword_248A70690);
      v5 = v13;
      v6 = v14;
      result = sub_248A5E244(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_248A5F260(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_248A5F178()
{
  result = qword_27EEBD830;
  if (!qword_27EEBD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD830);
  }

  return result;
}

unint64_t sub_248A5F1CC()
{
  result = qword_27EEBD838;
  if (!qword_27EEBD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD838);
  }

  return result;
}

uint64_t sub_248A5F250(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_248A5F260(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_248A5F270()
{
  result = qword_27EEBD858;
  if (!qword_27EEBD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD858);
  }

  return result;
}

unint64_t sub_248A5F2C4()
{
  result = qword_27EEBD860;
  if (!qword_27EEBD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD860);
  }

  return result;
}

unint64_t sub_248A5F318()
{
  result = qword_27EEBD868;
  if (!qword_27EEBD868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEBD868);
  }

  return result;
}

unint64_t sub_248A5F364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD918, &qword_248A70810);
    v3 = sub_248A6D984();
    v4 = a1 + 32;

    while (1)
    {
      sub_248A5F62C(v4, v13, &unk_27EEBD890, &unk_248A706A0);
      result = sub_248A5E200(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_248A5F260(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_248A5F4A4()
{
  result = qword_27EEBD8A8;
  if (!qword_27EEBD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD8A8);
  }

  return result;
}

uint64_t sub_248A5F62C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

CFOptionFlags sub_248A5F6F0()
{
  v19[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v18 = 0;
  if (qword_27EEBD438 != -1)
  {
    swift_once();
  }

  v1 = sub_248A6D624();
  __swift_project_value_buffer(v1, qword_27EEC3C38);
  v2 = sub_248A6D604();
  v3 = sub_248A6D814();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136446466;
    v6 = sub_248A6DBB4();
    v8 = sub_248A50F9C(v6, v7, v19);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2050;
    swift_beginAccess();
    *(v4 + 14) = v18;
    _os_log_impl(&dword_248A4A000, v2, v3, "[%{public}s] Waiting for response for notification: %{public}lu", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x24C1E2580](v5, -1, -1);
    MEMORY[0x24C1E2580](v4, -1, -1);
  }

  swift_beginAccess();
  CFUserNotificationReceiveResponse(v0, 0.0, &v18);
  swift_endAccess();
  v9 = sub_248A6D604();
  v10 = sub_248A6D814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136446466;
    v13 = sub_248A6DBB4();
    v15 = sub_248A50F9C(v13, v14, v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v18;
    _os_log_impl(&dword_248A4A000, v9, v10, "[%{public}s] Received response for notification: %{public}lu", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x24C1E2580](v12, -1, -1);
    MEMORY[0x24C1E2580](v11, -1, -1);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v18 & 3;
}

uint64_t CFUserNotificationRef.userResponse()()
{
  *(v1 + 24) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD990, &qword_248A70830) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248A5FA4C, 0, 0);
}

uint64_t sub_248A5FA4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_248A6D7B4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = sub_248A5FE34(0, 0, v1, &unk_248A70840, v4);
  v0[5] = v6;
  v7 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_248A5FB90;
  v9 = MEMORY[0x277D83E88];

  return MEMORY[0x282200460](v0 + 2, v6, v9);
}

uint64_t sub_248A5FB90()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248A5FC8C, 0, 0);
}

uint64_t sub_248A5FC8C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_248A5FCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_248A5FD1C, 0, 0);
}

uint64_t sub_248A5FD1C()
{
  v1 = v0[2];
  v2 = v0[3];
  *v1 = sub_248A5F6F0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_248A5FD80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248A53274;

  return sub_248A5FCFC(a1, v4, v5, v6);
}

uint64_t sub_248A5FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD990, &qword_248A70830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_248A600EC(a3, v27 - v11);
  v13 = sub_248A6D7B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_248A6015C(v12);
  }

  else
  {
    sub_248A6D7A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_248A6D794();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_248A6D684() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_248A6015C(a3);

      return v25;
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

  sub_248A6015C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_248A600EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD990, &qword_248A70830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A6015C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD990, &qword_248A70830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248A601C4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_248A602B8;

  return v6(v2 + 16);
}

uint64_t sub_248A602B8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_248A603E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248A559D8;

  return sub_248A601C4(a1, v5);
}

uint64_t sub_248A604A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248A53274;

  return sub_248A601C4(a1, v5);
}

uint64_t NotificationPayload.init(notificationType:destination:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = v4;
  return result;
}

BOOL static NotificationType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_248A605AC()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_248A605E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000248A73200 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000248A73220 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_248A6DAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_248A606CC(uint64_t a1)
{
  v2 = sub_248A61EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A60708(uint64_t a1)
{
  v2 = sub_248A61EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A60744(uint64_t a1)
{
  v2 = sub_248A61F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A60780(uint64_t a1)
{
  v2 = sub_248A61F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248A607BC(uint64_t a1)
{
  v2 = sub_248A61F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A607F8(uint64_t a1)
{
  v2 = sub_248A61F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD998, &qword_248A70860);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD9A0, &qword_248A70868);
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD9A8, &qword_248A70870);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v20 = *v1;
  v15 = *(v1 + 8);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A61EF4();
  sub_248A6DB84();
  if (v15)
  {
    v28 = 1;
    sub_248A61F48();
    v17 = v21;
    sub_248A6DA24();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v27 = 0;
    sub_248A61F9C();
    sub_248A6DA24();
    v26 = v20;
    type metadata accessor for DSSGuestUserModeUnavailableReason(0);
    sub_248A6288C(&qword_27EEBD9C8, type metadata accessor for DSSGuestUserModeUnavailableReason);
    v19 = v25;
    sub_248A6DA74();
    (*(v24 + 8))(v9, v19);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t NotificationType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD9D0, &qword_248A70878);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD9D8, &qword_248A70880);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD9E0, &unk_248A70888);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_248A61EF4();
  v19 = v36;
  sub_248A6DB74();
  if (!v19)
  {
    v36 = v13;
    v20 = v35;
    v21 = sub_248A6DA14();
    v22 = (2 * *(v21 + 16)) | 1;
    v38 = v21;
    v39 = v21 + 32;
    v40 = 0;
    v41 = v22;
    v23 = sub_248A582B0();
    v24 = v12;
    if (v23 == 2 || v40 != v41 >> 1)
    {
      v26 = sub_248A6D8E4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD6D8, &qword_248A6FBF0) + 48);
      *v28 = &type metadata for NotificationType;
      sub_248A6D9B4();
      sub_248A6D8D4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v36 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = v23;
      if (v23)
      {
        LOBYTE(v42) = 1;
        sub_248A61F48();
        sub_248A6D9A4();
        (*(v33 + 8))(v7, v32);
        (*(v36 + 8))(v16, v24);
        swift_unknownObjectRelease();
        v31 = 0;
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_248A61F9C();
        sub_248A6D9A4();
        type metadata accessor for DSSGuestUserModeUnavailableReason(0);
        sub_248A6288C(&qword_27EEBD9E8, type metadata accessor for DSSGuestUserModeUnavailableReason);
        sub_248A6DA04();
        (*(v34 + 8))(v11, v8);
        (*(v36 + 8))(v16, v24);
        swift_unknownObjectRelease();
        v31 = v42;
      }

      *v20 = v31;
      *(v20 + 8) = v25 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_248A610EC()
{
  sub_248A62218();
  sub_248A62170();
  return sub_248A6D5E4();
}

uint64_t sub_248A61140()
{
  sub_248A62218();
  sub_248A62170();
  return sub_248A6D5F4();
}

uint64_t sub_248A611BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

DeviceSharingServices::NotificationDestination_optional __swiftcall NotificationDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248A6D994();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationDestination.rawValue.getter()
{
  v1 = 1919247728;
  if (*v0 != 1)
  {
    v1 = 0x646E416C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_248A61298()
{
  v1 = *v0;
  sub_248A6DB34();
  sub_248A6D6A4();

  return sub_248A6DB64();
}

uint64_t sub_248A61338()
{
  *v0;
  *v0;
  sub_248A6D6A4();
}

uint64_t sub_248A613C4()
{
  v1 = *v0;
  sub_248A6DB34();
  sub_248A6D6A4();

  return sub_248A6DB64();
}

void sub_248A6146C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919247728;
  if (v2 != 1)
  {
    v5 = 0x646E416C61636F6CLL;
    v4 = 0xEC00000072656550;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_248A61578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919247728;
  if (v2 != 1)
  {
    v4 = 0x646E416C61636F6CLL;
    v3 = 0xEC00000072656550;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1919247728;
  if (*a2 != 1)
  {
    v8 = 0x646E416C61636F6CLL;
    v7 = 0xEC00000072656550;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248A6DAB4();
  }

  return v11 & 1;
}

void NotificationPayload.notificationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

unint64_t sub_248A6169C()
{
  if (*v0)
  {
    result = 0x74616E6974736564;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_248A616E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000248A73240 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_248A6DAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_248A617D0(uint64_t a1)
{
  v2 = sub_248A6211C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A6180C(uint64_t a1)
{
  v2 = sub_248A6211C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD9F0, &qword_248A70898);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v15 = *(v1 + 9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A6211C();
  sub_248A6DB84();
  v13[2] = v8;
  v14 = v9;
  v18 = 0;
  sub_248A62170();
  v11 = v13[1];
  sub_248A6DA74();
  if (!v11)
  {
    v17 = v15;
    v16 = 1;
    sub_248A621C4();
    sub_248A6DA74();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NotificationPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDA10, &qword_248A708A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A6211C();
  sub_248A6DB74();
  if (!v2)
  {
    v19 = 0;
    sub_248A62218();
    sub_248A6DA04();
    v11 = v15;
    v12 = v16;
    v17 = 1;
    sub_248A6226C();
    sub_248A6DA04();
    (*(v6 + 8))(v9, v5);
    v13 = v18;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 9) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_248A61C00()
{
  sub_248A628D4();
  sub_248A62928();
  return sub_248A6D5E4();
}

uint64_t sub_248A61C54()
{
  sub_248A628D4();
  sub_248A62928();
  return sub_248A6D5F4();
}

unint64_t sub_248A61EF4()
{
  result = qword_27EEBD9B0;
  if (!qword_27EEBD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD9B0);
  }

  return result;
}

unint64_t sub_248A61F48()
{
  result = qword_27EEBD9B8;
  if (!qword_27EEBD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD9B8);
  }

  return result;
}

unint64_t sub_248A61F9C()
{
  result = qword_27EEBD9C0;
  if (!qword_27EEBD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD9C0);
  }

  return result;
}

uint64_t _s21DeviceSharingServices19NotificationPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
LABEL_3:
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v5 = 0xE400000000000000;
  v6 = 1919247728;
  if (v2 != 1)
  {
    v6 = 0x646E416C61636F6CLL;
    v5 = 0xEC00000072656550;
  }

  if (*(a1 + 9))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C61636F6CLL;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = 0xE400000000000000;
  v10 = 1919247728;
  if (*(a2 + 9) != 1)
  {
    v10 = 0x646E416C61636F6CLL;
    v9 = 0xEC00000072656550;
  }

  if (*(a2 + 9))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6C61636F6CLL;
  }

  if (*(a2 + 9))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_248A6DAB4();
  }

  return v4 & 1;
}

unint64_t sub_248A6211C()
{
  result = qword_27EEBD9F8;
  if (!qword_27EEBD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBD9F8);
  }

  return result;
}

unint64_t sub_248A62170()
{
  result = qword_27EEBDA00;
  if (!qword_27EEBDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA00);
  }

  return result;
}

unint64_t sub_248A621C4()
{
  result = qword_27EEBDA08;
  if (!qword_27EEBDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA08);
  }

  return result;
}

unint64_t sub_248A62218()
{
  result = qword_27EEBDA18;
  if (!qword_27EEBDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA18);
  }

  return result;
}

unint64_t sub_248A6226C()
{
  result = qword_27EEBDA20;
  if (!qword_27EEBDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA20);
  }

  return result;
}

unint64_t sub_248A622C4()
{
  result = qword_27EEBDA28;
  if (!qword_27EEBDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA28);
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

uint64_t getEnumTagSinglePayload for NotificationType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NotificationType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_248A6237C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248A62398(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPayload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationPayload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_248A624C8()
{
  result = qword_27EEBDA30;
  if (!qword_27EEBDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA30);
  }

  return result;
}

unint64_t sub_248A62520()
{
  result = qword_27EEBDA38;
  if (!qword_27EEBDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA38);
  }

  return result;
}

unint64_t sub_248A62578()
{
  result = qword_27EEBDA40;
  if (!qword_27EEBDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA40);
  }

  return result;
}