uint64_t sub_2441EF820()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2441EF8A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2441EF8E4()
{
  sub_2441F5128();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

id sub_2441EF948()
{
  result = [objc_allocWithZone(MEMORY[0x277D441C8]) init];
  qword_27EDDB138 = result;
  return result;
}

void sub_2441EF97C()
{
  v2 = v0;
  if (qword_28136A8E8 != -1)
  {
    sub_2441F1414();
  }

  v3 = sub_2441F6D9C();
  sub_2441F0E24(v3, qword_28136A8F8);
  v4 = sub_2441F6D7C();
  v5 = sub_2441F6E9C();
  if (sub_2441F14E0(v5))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    sub_2441F14C0(&dword_2441EE000, v6, v7, "Starting PeopleHarvester");
    sub_2441F1488();
  }

  if (qword_27EDDB130 != -1)
  {
    swift_once();
  }

  v8 = qword_27EDDB138;
  [qword_27EDDB138 setDiscoveryFlags_];
  [v8 setChangeFlags_];
  v9 = v2[2];
  v22 = v2[1];
  v23 = v9;
  sub_2441F13F8();
  v19 = 1107296256;
  v20 = sub_2441EFC7C;
  v21 = &unk_285794CB8;
  _Block_copy(&v18);
  sub_2441F1448();

  [v8 setInvalidationHandler_];
  _Block_release(v1);
  v10 = v2[4];
  v22 = v2[3];
  v23 = v10;
  sub_2441F13F8();
  sub_2441F1434();
  v20 = v11;
  v21 = &unk_285794CE0;
  _Block_copy(&v18);
  sub_2441F1448();

  [v8 setPersonFoundHandler_];
  _Block_release(v1);
  v12 = v2[6];
  v22 = v2[5];
  v23 = v12;
  sub_2441F13F8();
  sub_2441F1434();
  v20 = v13;
  v21 = &unk_285794D08;
  _Block_copy(&v18);
  sub_2441F1448();

  [v8 setPersonLostHandler_];
  _Block_release(v1);
  v14 = v2[7];
  v15 = v2[8];
  v22 = v14;
  v23 = v15;
  sub_2441F13F8();
  v19 = 1107296256;
  v20 = sub_2441EFD28;
  v21 = &unk_285794D30;
  v16 = _Block_copy(&v18);

  [v8 setPersonChangedHandler_];
  _Block_release(v16);
  v22 = sub_2441EFD9C;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2441EFFE0;
  v21 = &unk_285794D58;
  v17 = _Block_copy(&v18);
  [v8 activateWithCompletion_];
  _Block_release(v17);
}

uint64_t sub_2441EFC7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2441EFCC0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2441EFD28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2441EFD9C(void *a1)
{
  if (a1)
  {
    if (qword_28136A8E8 != -1)
    {
      swift_once();
    }

    v2 = sub_2441F6D9C();
    sub_2441F0E24(v2, qword_28136A8F8);
    MEMORY[0x245D5BAB0](a1);
    oslog = sub_2441F6D7C();
    v3 = sub_2441F6E9C();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = sub_2441F6F9C();
      v8 = sub_2441F6588(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_2441EE000, oslog, v3, "PeopleHarvester: Error in activating peopleDiscovery:%s", v4, 0xCu);
      sub_2441F1058(v5);
      MEMORY[0x245D5BBA0](v5, -1, -1);
      MEMORY[0x245D5BBA0](v4, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_28136A8E8 != -1)
    {
      swift_once();
    }

    v9 = sub_2441F6D9C();
    sub_2441F0E24(v9, qword_28136A8F8);
    oslog = sub_2441F6D7C();
    v10 = sub_2441F6E9C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2441EE000, oslog, v10, "PeopleHarvester: Successfully activated peopleDiscovery", v11, 2u);
      MEMORY[0x245D5BBA0](v11, -1, -1);
    }
  }
}

void sub_2441EFFE0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2441F004C(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_28136A8E8 != -1)
  {
    swift_once();
  }

  v6 = sub_2441F6D9C();
  sub_2441F0E24(v6, qword_28136A8F8);

  v7 = sub_2441F6D7C();
  v8 = sub_2441F6E9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2441F6588(a2, a3, &v21);
    _os_log_impl(&dword_2441EE000, v7, v8, "%s called", v9, 0xCu);
    sub_2441F1058(v10);
    MEMORY[0x245D5BBA0](v10, -1, -1);
    MEMORY[0x245D5BBA0](v9, -1, -1);
  }

  v11 = a1;
  oslog = sub_2441F6D7C();
  v12 = sub_2441F6E9C();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v15 = [v11 description];
    v16 = sub_2441F6DFC();
    v18 = v17;

    v19 = sub_2441F6588(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2441EE000, oslog, v12, "Person = %s", v13, 0xCu);
    sub_2441F1058(v14);
    MEMORY[0x245D5BBA0](v14, -1, -1);
    MEMORY[0x245D5BBA0](v13, -1, -1);
  }
}

void sub_2441F02AC()
{
  if (qword_28136A8E8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = sub_2441F6D9C();
    sub_2441F0E24(v0, qword_28136A8F8);
    v1 = sub_2441F6D7C();
    v2 = sub_2441F6E9C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2441EE000, v1, v2, "Ingesting event into the PeopleDiscoveryBiomeStream", v3, 2u);
      MEMORY[0x245D5BBA0](v3, -1, -1);
    }

    v26 = [objc_msgSend(BiomeLibrary() ContextualUnderstanding)];
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277D84F90];
    if (qword_27EDDB130 != -1)
    {
      swift_once();
    }

    v4 = [qword_27EDDB138 discoveredPeople];
    sub_2441F1104(0, &qword_27EDDB240, 0x277D441D0);
    v5 = sub_2441F6E5C();

    v29 = v5;
    v6 = sub_2441F60FC(v5);
    if (!v6)
    {
      break;
    }

    if (v6 < 1)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    v27 = v6;
    v28 = v5 & 0xC000000000000001;
    while (1)
    {
      v8 = v28 ? MEMORY[0x245D5B740](v7, v29) : *(v29 + 8 * v7 + 32);
      v9 = v8;
      v10 = sub_2441F10A4(v8, &selRef_contactID);
      v12 = v11;
      v13 = [v9 identifier];
      v14 = sub_2441F6DFC();
      v16 = v15;

      v17 = sub_2441F10A4(v9, &selRef_name);
      v19 = v18;
      [v9 flags];
      v20 = sub_2441F6FCC();
      if (([v9 activityLevel] & 0x80000000) != 0)
      {
        break;
      }

      v30 = v7;
      v21 = sub_2441F6FCC();
      if (([v9 proximity] & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v22 = sub_2441F6FCC();
      v23 = objc_allocWithZone(MEMORY[0x277CF1058]);
      sub_2441F0F04(v10, v12, v14, v16, v17, v19, v20, v21, v22);
      MEMORY[0x245D5B640]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2441F6E6C();
      }

      v7 = v30 + 1;
      sub_2441F6E7C();

      if (v27 == v30 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_17:

  sub_2441F1104(0, &qword_27EDDB248, 0x277CF1050);
  v24 = sub_2441F06C0();
  v25 = [v26 source];
  [v25 sendEvent_];

  swift_unknownObjectRelease();
}

id sub_2441F06C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2441F1104(0, &qword_27EDDB250, 0x277CF1058);
  v1 = sub_2441F6E4C();

  v2 = [v0 initWithDiscoveredPersons_];

  return v2;
}

void sub_2441F0748()
{
  if (qword_28136A8E8 != -1)
  {
    swift_once();
  }

  v0 = sub_2441F6D9C();
  sub_2441F0E24(v0, qword_28136A8F8);
  v1 = sub_2441F6D7C();
  v2 = sub_2441F6E9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2441EE000, v1, v2, "PeopleHarvester: Invalidation handler called", v3, 2u);
    MEMORY[0x245D5BBA0](v3, -1, -1);
  }

  sub_2441F02AC();
}

void sub_2441F0830(void *a1)
{
  sub_2441F004C(a1, 0xD000000000000012, 0x80000002441F8980);

  sub_2441F02AC();
}

void sub_2441F0870(void *a1)
{
  sub_2441F004C(a1, 0xD000000000000011, 0x80000002441F8960);

  sub_2441F02AC();
}

void sub_2441F08B0(void *a1)
{
  sub_2441F004C(a1, 0xD000000000000014, 0x80000002441F8940);

  sub_2441F02AC();
}

uint64_t sub_2441F08FC()
{
  if (qword_28136A8E8 != -1)
  {
    sub_2441F1414();
  }

  v0 = sub_2441F6D9C();
  sub_2441F0E24(v0, qword_28136A8F8);
  v1 = sub_2441F6D7C();
  v2 = sub_2441F6E9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2441EE000, v1, v2, "Starting AmbientLightHarvester", v3, 2u);
    sub_2441F1488();
  }

  sub_2441F6D6C();
  sub_2441F6D5C();
}

uint64_t sub_2441F09E4()
{
  sub_2441F1010(&qword_27EDDB238, &qword_2441F7B28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2441F7AD0;
  *(v0 + 56) = &type metadata for PeopleHarvester;
  *(v0 + 64) = &off_285794CA0;
  result = swift_allocObject();
  *(v0 + 32) = result;
  *(result + 16) = 1;
  *(result + 24) = sub_2441F0748;
  *(result + 32) = 0;
  *(result + 40) = sub_2441F0830;
  *(result + 48) = 0;
  *(result + 56) = sub_2441F0870;
  *(result + 64) = 0;
  *(result + 72) = sub_2441F08B0;
  *(result + 80) = 0;
  *(v0 + 96) = &type metadata for AmbientLightHarvester;
  *(v0 + 104) = &off_285794C88;
  *(v0 + 72) = 1;
  qword_28136A8F0 = v0;
  return result;
}

void sub_2441F0AD4()
{
  if (qword_28136A8E8 != -1)
  {
    sub_2441F1414();
  }

  v0 = sub_2441F6D9C();
  sub_2441F0E24(v0, qword_28136A8F8);
  v1 = sub_2441F6D7C();
  v2 = sub_2441F6E9C();
  if (sub_2441F14E0(v2))
  {
    *swift_slowAlloc() = 0;
    sub_2441F14C0(&dword_2441EE000, v3, v4, "Starting to harvest evidence");
    sub_2441F1488();
  }

  if (qword_28136A8E0 != -1)
  {
    swift_once();
  }

  v6 = *(qword_28136A8F0 + 16);
  if (v6)
  {
    v7 = qword_28136A8F0 + 32;
    *&v5 = 136315138;
    v33 = v5;
    while (1)
    {
      sub_2441F0E5C(v7, v36);
      v8 = v37;
      v9 = v38;
      sub_2441F0EC0(v36, v37);
      if (((*(v9 + 8))(v8, v9) & 1) == 0)
      {
        break;
      }

      sub_2441F6D4C();
      if (MEMORY[0x245D5B540]())
      {
        sub_2441F0E5C(v36, v35);
        v10 = sub_2441F6D7C();
        v11 = sub_2441F6E9C();
        if (sub_2441F14E0(v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          sub_2441F1464(v13, v14, v15);
          sub_2441F1010(&qword_27EDDB230, &qword_2441F7B20);
          v16 = sub_2441F6E0C();
          v18 = v17;
          sub_2441F1058(v35);
          v19 = sub_2441F6588(v16, v18, &v34);

          *(v12 + 4) = v19;
          sub_2441F14A0(&dword_2441EE000, v20, v11);
          sub_2441F1058(v13);
          goto LABEL_15;
        }

LABEL_16:

        sub_2441F1058(v35);
        goto LABEL_17;
      }

LABEL_18:
      sub_2441F1058(v36);
      v7 += 40;
      if (!--v6)
      {
        return;
      }
    }

    sub_2441F0E5C(v36, v35);
    v10 = sub_2441F6D7C();
    v21 = sub_2441F6E9C();
    if (!sub_2441F14E0(v21))
    {
      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    sub_2441F1464(v23, v24, v25, v33);
    sub_2441F1010(&qword_27EDDB230, &qword_2441F7B20);
    v26 = sub_2441F6E0C();
    v28 = v27;
    sub_2441F1058(v35);
    v29 = sub_2441F6588(v26, v28, &v34);

    *(v22 + 4) = v29;
    sub_2441F14A0(&dword_2441EE000, v30, v21);
    sub_2441F1058(v23);
LABEL_15:
    sub_2441F1488();
    sub_2441F1488();

LABEL_17:
    v31 = v37;
    v32 = v38;
    sub_2441F0EC0(v36, v37);
    (*(v32 + 16))(v31, v32);
    goto LABEL_18;
  }
}

uint64_t sub_2441F0E24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2441F0E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2441F0EC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_2441F0F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  if (a2)
  {
    v15 = sub_2441F6DEC();
  }

  else
  {
    v15 = 0;
  }

  if (!a4)
  {
    v16 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = sub_2441F6DEC();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_2441F6DEC();

LABEL_9:
  v18 = [v10 initWithContactID:v15 identifier:v16 name:v17 flags:a7 activityLevel:a8 proximity:a9];

  return v18;
}

uint64_t sub_2441F1010(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2441F1058(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2441F10A4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2441F6DFC();

  return v4;
}

uint64_t sub_2441F1104(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for AmbientLightHarvester(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AmbientLightHarvester(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2441F12D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2441F1310(uint64_t result, int a2, int a3)
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

uint64_t sub_2441F1370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata accessor for RPPersonChangeFlags()
{
  if (!qword_27EDDB258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDDB258);
    }
  }
}

uint64_t sub_2441F1414()
{

  return swift_once();
}

uint64_t sub_2441F1448()
{
}

uint64_t sub_2441F1464(uint64_t a1, int a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_arg(va1, void);
  v12 = a1;
  *v3 = a2;

  return sub_2441F0E5C(va1, va);
}

void sub_2441F1488()
{

  JUMPOUT(0x245D5BBA0);
}

void sub_2441F14A0(void *a1, uint64_t a2, os_log_type_t a3)
{

  _os_log_impl(a1, v3, a3, v4, v5, 0xCu);
}

void sub_2441F14C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_2441F14E0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void static EvidenceSystem.start()()
{
  if (qword_28136A8E8 != -1)
  {
    swift_once();
  }

  v0 = sub_2441F6D9C();
  sub_2441F0E24(v0, qword_28136A8F8);
  v1 = sub_2441F6D7C();
  v2 = sub_2441F6E9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2441EE000, v1, v2, "Starting ContextualUnderstandingEvidence System", v3, 2u);
    MEMORY[0x245D5BBA0](v3, -1, -1);
  }

  sub_2441F0AD4();
}

id EvidenceSystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EvidenceSystem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EvidenceSystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2441F16E4()
{
  sub_2441F1010(&qword_27EDDB3E0, &unk_2441F7C78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2441F7C30;
  type metadata accessor for ContactStoreManager();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = BiomeLibrary();
  *(v0 + 56) = &type metadata for SocialContextInference;
  *(v0 + 64) = &off_2857950D8;
  *(v0 + 32) = result;
  *(v0 + 40) = v1;
  qword_27EDDB480 = v0;
  return result;
}

void static InferenceEngine.start()()
{
  sub_2441F6D4C();
  if (MEMORY[0x245D5B530]())
  {
    if (qword_27EDDB160 != -1)
    {
      swift_once();
    }

    v0 = sub_2441F6D9C();
    sub_2441F0E24(v0, qword_27EDDB498);
    v1 = sub_2441F6D7C();
    v2 = sub_2441F6E9C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2441EE000, v1, v2, "Started contextual understanding inference engine", v3, 2u);
      MEMORY[0x245D5BBA0](v3, -1, -1);
    }

    if (qword_27EDDB148 != -1)
    {
      swift_once();
    }

    v4 = *(qword_27EDDB480 + 16);
    if (v4)
    {
      v5 = (qword_27EDDB480 + 32);
      do
      {
        v6 = sub_2441F0EC0(v5, v5[3]);
        v7 = *v6;
        v8 = v6[1];
        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v8;
        swift_unknownObjectRetain();

        sub_2441F1B48(sub_2441F1AB4, v9, 0xD000000000000047);

        v10 = swift_allocObject();
        *(v10 + 16) = v7;
        *(v10 + 24) = v8;
        swift_unknownObjectRetain();

        sub_2441F209C(sub_2441F1AB4, v10, 0xD000000000000045);

        v5 += 5;
        --v4;
      }

      while (v4);
    }
  }
}

id InferenceEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InferenceEngine.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InferenceEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2441F1ABC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2441F1B20()
{
  result = BiomeLibrary();
  qword_27EDDB488 = result;
  return result;
}

void sub_2441F1B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2441F6EBC();
  v5 = sub_2441F2824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_2441F2750();
  v12 = v11 - v10;
  v13 = sub_2441F6EAC();
  v14 = sub_2441F283C(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_2441F2750();
  v17 = sub_2441F6DBC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_2441F2750();
  if (qword_27EDDB160 != -1)
  {
    sub_2441F27B0();
  }

  v19 = sub_2441F6D9C();
  sub_2441F0E24(v19, qword_27EDDB498);
  v20 = sub_2441F6D7C();
  v21 = sub_2441F6E9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    sub_2441F2870(&dword_2441EE000, v23, v24, "Registering for PeopleDiscoveryStreamSubscription");
    MEMORY[0x245D5BBA0](v22, -1, -1);
  }

  sub_2441F2564();
  sub_2441F6DAC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2441F25A8();
  sub_2441F1010(&qword_27EDDB3F8, &qword_2441F7C88);
  v25 = sub_2441F2600();
  sub_2441F27D0(v25);
  (*(v7 + 104))(v12, *MEMORY[0x277D85260], v3);
  v26 = sub_2441F27FC(82, 0x80000002441F8B90);
  v27 = objc_allocWithZone(MEMORY[0x277CF1918]);

  v28 = sub_2441F2850(v26);
  if (qword_27EDDB150 != -1)
  {
    swift_once();
  }

  v29 = [objc_msgSend(qword_27EDDB488 ContextualUnderstanding];
  swift_unknownObjectRelease();
  v30 = [v29 DSLPublisher];
  v31 = [v30 subscribeOn_];

  sub_2441F2760();
  sub_2441F2784();
  v42 = v32;
  v43 = &unk_285794E70;
  v33 = _Block_copy(aBlock);
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v44 = sub_2441F2730;
  v45 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  sub_2441F279C();
  v42 = v35;
  v43 = &unk_285794EC0;
  v36 = _Block_copy(aBlock);

  v37 = [v31 sinkWithCompletion:v33 receiveInput:v36];
  _Block_release(v36);
  _Block_release(v33);
}

void sub_2441F1F5C(void *a1, void (*a2)(id, void))
{
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 eventBody];
    if (v4)
    {
      v5 = v4;
      v6 = v4;
      a2(v5, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2441F2014(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_2441F2074()
{
  result = BiomeLibrary();
  qword_27EDDB490 = result;
  return result;
}

void sub_2441F209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2441F6EBC();
  v5 = sub_2441F2824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_2441F2750();
  v12 = v11 - v10;
  v13 = sub_2441F6EAC();
  v14 = sub_2441F283C(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_2441F2750();
  v17 = sub_2441F6DBC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  sub_2441F2750();
  if (qword_27EDDB160 != -1)
  {
    sub_2441F27B0();
  }

  v19 = sub_2441F6D9C();
  sub_2441F0E24(v19, qword_27EDDB498);
  v20 = sub_2441F6D7C();
  v21 = sub_2441F6E9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    sub_2441F2870(&dword_2441EE000, v23, v24, "Registering for SoundAnalysisStreamSubscription");
    MEMORY[0x245D5BBA0](v22, -1, -1);
  }

  sub_2441F2564();
  sub_2441F6DAC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2441F25A8();
  sub_2441F1010(&qword_27EDDB3F8, &qword_2441F7C88);
  v25 = sub_2441F2600();
  sub_2441F27D0(v25);
  (*(v7 + 104))(v12, *MEMORY[0x277D85260], v3);
  v26 = sub_2441F27FC(80, 0x80000002441F8B00);
  v27 = objc_allocWithZone(MEMORY[0x277CF1918]);

  v28 = sub_2441F2850(v26);
  if (qword_27EDDB158 != -1)
  {
    swift_once();
  }

  v29 = [objc_msgSend(qword_27EDDB490 ContextualUnderstanding];
  swift_unknownObjectRelease();
  v30 = [v29 DSLPublisher];
  v31 = [v30 subscribeOn_];

  sub_2441F2760();
  sub_2441F2784();
  v42 = v32;
  v43 = &unk_285794DF8;
  v33 = _Block_copy(aBlock);
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v44 = sub_2441F2728;
  v45 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  sub_2441F279C();
  v42 = v35;
  v43 = &unk_285794E48;
  v36 = _Block_copy(aBlock);

  v37 = [v31 sinkWithCompletion:v33 receiveInput:v36];
  _Block_release(v36);
  _Block_release(v33);
}

void sub_2441F24AC(void *a1, void (*a2)(void, id))
{
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 eventBody];
    if (v4)
    {
      v5 = v4;
      v6 = v4;
      a2(0, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2441F2564()
{
  result = qword_27EDDB3E8;
  if (!qword_27EDDB3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDB3E8);
  }

  return result;
}

unint64_t sub_2441F25A8()
{
  result = qword_27EDDB3F0;
  if (!qword_27EDDB3F0)
  {
    sub_2441F6EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDB3F0);
  }

  return result;
}

unint64_t sub_2441F2600()
{
  result = qword_27EDDB400;
  if (!qword_27EDDB400)
  {
    sub_2441F2664(&qword_27EDDB3F8, &qword_2441F7C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDB400);
  }

  return result;
}

uint64_t sub_2441F2664(uint64_t *a1, uint64_t *a2)
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

id sub_2441F26AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2441F6DEC();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

uint64_t sub_2441F2710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2441F2760()
{
  *(v1 - 112) = v0;
  *(v1 - 104) = 0;
  *(v1 - 144) = MEMORY[0x277D85DD0];
}

uint64_t sub_2441F27B0()
{

  return swift_once();
}

uint64_t sub_2441F27D0(uint64_t a1)
{

  return MEMORY[0x2821FCEB0](v4 - 144, v1, a1, v3, v2);
}

uint64_t sub_2441F27FC(uint64_t a1, uint64_t a2)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821FF2B0](v6, a2, v4, v3, v2, 0);
}

id sub_2441F2850(void *a1)
{
  v5 = *(v2 - 176);

  return sub_2441F26AC(v5, v1, a1);
}

void sub_2441F2870(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t *sub_2441F28B4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2441F2938(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2441F6D9C();
  sub_2441F28B4(v3, a2);
  sub_2441F0E24(v3, a2);
  return sub_2441F6D8C();
}

void sub_2441F29B0(void *a1, void *a2, void *a3)
{
  v6 = sub_2441F6D1C();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  if (!a1)
  {
    v9 = [objc_msgSend(a3 ContextualUnderstanding)];
    swift_unknownObjectRelease();
    v64 = sub_2441F3130(v9);
  }

  v10 = a1;
  v11 = a2;
  if (!a2)
  {
    v12 = [objc_msgSend(a3 ContextualUnderstanding)];
    swift_unknownObjectRelease();
    v11 = sub_2441F32F0(v12);
  }

  v13 = a2;
  v14 = sub_2441F526C(v64);
  if (qword_27EDDB160 != -1)
  {
    swift_once();
  }

  v15 = sub_2441F6D9C();
  v16 = sub_2441F0E24(v15, qword_27EDDB498);

  v63 = v16;
  v17 = sub_2441F6D7C();
  v18 = sub_2441F6E9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = sub_2441F34B0(v14);

    _os_log_impl(&dword_2441EE000, v17, v18, "Number of newly discovered people through Airdrop = %ld", v19, 0xCu);
    sub_2441F1488();
  }

  else
  {
  }

  v62 = v11;
  v20 = sub_2441F616C(v11);
  v21 = sub_2441F6D7C();
  v22 = sub_2441F6E9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = sub_2441F34B0(v20);
    _os_log_impl(&dword_2441EE000, v21, v22, "Number of newly discovered people through Sound Analysis = %ld", v23, 0xCu);
    sub_2441F1488();
  }

  v65 = v14;
  v60 = v14;

  v61 = v20;
  sub_2441F4128(v24);
  v25 = v65;
  v26 = [objc_msgSend(a3 ContextualUnderstanding)];
  swift_unknownObjectRelease();
  v27 = sub_2441F34D4(v26);
  v28 = v27;
  if (v27)
  {
    v29 = [v27 discoveredPeople];
    sub_2441F1104(0, &qword_27EDDB410, 0x277CF1068);
    v30 = sub_2441F6E5C();

    v56 = sub_2441F4B80(v28);
    v32 = v31;
  }

  else
  {
    v56 = 0;
    v32 = 0;
    v30 = MEMORY[0x277D84F90];
  }

  v33 = sub_2441F6D7C();
  v34 = sub_2441F6E9C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = sub_2441F34B0(v30);

    _os_log_impl(&dword_2441EE000, v33, v34, "Number of last discovered people = %ld", v35, 0xCu);
    sub_2441F1488();
  }

  else
  {
  }

  if ((sub_2441F3694(v25, v30) & 1) == 0)
  {
    v55 = v25;
    if (v28)
    {
      if (!v32)
      {
        __break(1u);
        return;
      }

      sub_2441F1104(0, &qword_27EDDB408, 0x277CCABB0);
      v40 = sub_2441F6EEC();
      sub_2441F6CCC();
      v41 = sub_2441F6E8C();
      v42 = objc_allocWithZone(MEMORY[0x277CF1060]);
      v43 = sub_2441F3F28(v56, v32, v30, v40, v41);
      [v43 setHasStartTimeInSecondsSinceReferenceDate_];
      [v43 setHasEndTimeInSecondsSinceReferenceDate_];
      v44 = [v26 source];
      [v44 sendEvent_];
    }

    else
    {
    }

    v45 = v57;
    sub_2441F6D0C();
    v46 = sub_2441F6CFC();
    v48 = v47;
    (*(v58 + 8))(v45, v59);
    sub_2441F6CCC();
    v49 = sub_2441F6E8C();
    sub_2441F1104(0, &qword_27EDDB408, 0x277CCABB0);
    v50 = sub_2441F6EEC();
    v51 = objc_allocWithZone(MEMORY[0x277CF1060]);
    v52 = sub_2441F3F28(v46, v48, v55, v49, v50);
    [v52 setHasStartTimeInSecondsSinceReferenceDate_];
    [v52 setHasEndTimeInSecondsSinceReferenceDate_];
    v53 = [v26 source];
    [v53 sendEvent_];

    return;
  }

  v36 = sub_2441F6D7C();
  v37 = sub_2441F6E9C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2441EE000, v36, v37, "Newly discovered people same as last discovered people", v38, 2u);
    sub_2441F1488();
  }

  v39 = v64;
}

id sub_2441F3130(void *a1)
{
  v4 = sub_2441F1010(&qword_27EDDB420, &qword_2441F7D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2441F4FE0();
  MEMORY[0x28223BE20](v6);
  sub_2441F50E0();
  sub_2441F5128();
  v7 = swift_allocObject();
  v8 = sub_2441F50A4(v7);
  sub_2441F5010(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v10 = sub_2441F5058();
  v11 = [a1 publisherWithOptions_];

  sub_2441F4FA4();
  sub_2441F4FC8();
  v20 = v12;
  v21 = &unk_285795000;
  v13 = _Block_copy(aBlock);
  v22 = sub_2441F4ED4;
  v23 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v20 = sub_2441F4FA0;
  v21 = &unk_285795028;
  _Block_copy(aBlock);
  sub_2441F50F0();

  v15 = sub_2441F510C(v14, sel_sinkWithCompletion_receiveInput_);

  _Block_release(v10);
  _Block_release(v13);

  sub_2441F5084();
  v16 = *v2;
  v17 = *v2;

  return v16;
}

id sub_2441F32F0(void *a1)
{
  v4 = sub_2441F1010(&qword_27EDDB420, &qword_2441F7D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2441F4FE0();
  MEMORY[0x28223BE20](v6);
  sub_2441F50E0();
  sub_2441F5128();
  v7 = swift_allocObject();
  v8 = sub_2441F50A4(v7);
  sub_2441F5010(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v10 = sub_2441F5058();
  v11 = [a1 publisherWithOptions_];

  sub_2441F4FA4();
  sub_2441F4FC8();
  v20 = v12;
  v21 = &unk_285794F88;
  v13 = _Block_copy(aBlock);
  v22 = sub_2441F4ECC;
  v23 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v20 = sub_2441F4FA0;
  v21 = &unk_285794FB0;
  _Block_copy(aBlock);
  sub_2441F50F0();

  v15 = sub_2441F510C(v14, sel_sinkWithCompletion_receiveInput_);

  _Block_release(v10);
  _Block_release(v13);

  sub_2441F5084();
  v16 = *v2;
  v17 = *v2;

  return v16;
}

uint64_t sub_2441F34B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2441F6F6C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_2441F34D4(void *a1)
{
  v4 = sub_2441F1010(&qword_27EDDB420, &qword_2441F7D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2441F4FE0();
  MEMORY[0x28223BE20](v6);
  sub_2441F50E0();
  sub_2441F5128();
  v7 = swift_allocObject();
  v8 = sub_2441F50A4(v7);
  sub_2441F5010(v8);
  v9 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v10 = sub_2441F5058();
  v11 = [a1 publisherWithOptions_];

  sub_2441F4FA4();
  sub_2441F4FC8();
  v20 = v12;
  v21 = &unk_285794F10;
  v13 = _Block_copy(aBlock);
  v22 = sub_2441F4E38;
  v23 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v20 = sub_2441F4FA0;
  v21 = &unk_285794F38;
  _Block_copy(aBlock);
  sub_2441F50F0();

  v15 = sub_2441F510C(v14, sel_sinkWithCompletion_receiveInput_);

  _Block_release(v10);
  _Block_release(v13);

  sub_2441F5084();
  v16 = *v2;
  v17 = *v2;

  return v16;
}

uint64_t sub_2441F3694(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_2441F6F6C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    v5 = sub_2441F6F6C();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v6 = sub_2441F3758(a1);
  v7 = sub_2441F3758(a2);
  v8 = sub_2441F3914(v6, v7);

  return v8 & 1;
}

uint64_t sub_2441F3758(unint64_t a1)
{
  v20 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
LABEL_28:
    v2 = sub_2441F6F6C();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84FA0];
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84FA0];
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x245D5B740](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_2441F5134();
    if (v7)
    {
      sub_2441F50C4();
      sub_2441F4FFC();
      if (!v8)
      {
        sub_2441F514C();
        if (v17)
        {
          sub_2441F50C4();
          sub_2441F4FFC();
          if (!v18)
          {
LABEL_23:

            goto LABEL_24;
          }
        }
      }
    }

    sub_2441F5134();
    if (v9)
    {

      sub_2441F5134();
      if (v10)
      {
        sub_2441F50C4();
        sub_2441F4FFC();
        if (v11)
        {
          break;
        }
      }
    }

    sub_2441F514C();
    if (!v14)
    {
      goto LABEL_23;
    }

    sub_2441F514C();
    if (!v15)
    {
      goto LABEL_23;
    }

    sub_2441F50C4();
    sub_2441F4FFC();
    if (!v16)
    {
      goto LABEL_23;
    }

    result = sub_2441F514C();
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_20:
    sub_2441F4274(&v19, result, v13);

LABEL_24:
    if (v6 == v2)
    {
      return v20;
    }
  }

  result = sub_2441F5134();
  if (v13)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2441F3914(uint64_t result, uint64_t a2)
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
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_2441F6FAC();

      sub_2441F6E1C();
      v16 = sub_2441F6FBC();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_2441F6F7C();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2441F3ABC(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v5 = v3;
    if ([v3 hasStartTimeInSecondsSinceReferenceDate])
    {
      swift_beginAccess();
      v4 = *(a2 + 16);
      *(a2 + 16) = v5;
    }

    else
    {
    }
  }
}

void sub_2441F3B58(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_27EDDB160 != -1)
    {
      swift_once();
    }

    v6 = sub_2441F6D9C();
    sub_2441F0E24(v6, qword_27EDDB498);
    oslog = sub_2441F6D7C();
    v7 = sub_2441F6E9C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_2441F6588(0xD000000000000091, 0x80000002441F8C20, v11);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2441F6588(0xD000000000000022, 0x80000002441F8CF0, v11);
      _os_log_impl(&dword_2441EE000, oslog, v7, "%s:%s: Exception: No eventBody retreived from event", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5BBA0](v9, -1, -1);
      MEMORY[0x245D5BBA0](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2441F3D40(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_27EDDB160 != -1)
    {
      swift_once();
    }

    v6 = sub_2441F6D9C();
    sub_2441F0E24(v6, qword_27EDDB498);
    oslog = sub_2441F6D7C();
    v7 = sub_2441F6E9C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_2441F6588(0xD000000000000091, 0x80000002441F8C20, v11);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2441F6588(0xD000000000000020, 0x80000002441F8CC0, v11);
      _os_log_impl(&dword_2441EE000, oslog, v7, "%s:%s: Exception: No eventBody retreived from event", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5BBA0](v9, -1, -1);
      MEMORY[0x245D5BBA0](v8, -1, -1);
    }

    else
    {
    }
  }
}

id sub_2441F3F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = sub_2441F6DEC();
  }

  else
  {
    v9 = 0;
  }

  sub_2441F1104(0, &qword_27EDDB410, 0x277CF1068);
  v10 = sub_2441F6E4C();

  v11 = [v6 initWithLocalIdentifier:v9 discoveredPeople:v10 startTimeInSecondsSinceReferenceDate:a4 endTimeInSecondsSinceReferenceDate:a5];

  return v11;
}

id sub_2441F3FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_2441F6CEC();
  v13 = 0;
  if (sub_2441F4E40(a1, 1, v12) != 1)
  {
    v13 = sub_2441F6CDC();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_2441F4E40(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_2441F6CDC();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_2441F4128(unint64_t a1)
{
  v3 = sub_2441F34B0(a1);
  v4 = sub_2441F34B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2441F41D4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2441F4BF0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2441F41D4(uint64_t a1)
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
    sub_2441F6F6C();
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
  result = sub_2441F6F4C();
  *v1 = result;
  return result;
}

BOOL sub_2441F4274(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2441F6FAC();
  sub_2441F6E1C();
  v9 = sub_2441F6FBC();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2441F6F7C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_2441F461C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_2441F43C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2441F1010(&qword_27EDDB418, &qword_2441F7D00);
  result = sub_2441F6F1C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2441F4784(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2441F6FAC();
    sub_2441F6E1C();
    result = sub_2441F6FBC();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2441F461C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2441F43C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2441F4940(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2441F6FAC();
      sub_2441F6E1C();
      result = sub_2441F6FBC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_2441F6F7C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2441F47E8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2441F6F8C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2441F4784(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2441F7CA0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2441F47E8()
{
  v1 = v0;
  sub_2441F1010(&qword_27EDDB418, &qword_2441F7D00);
  v2 = *v0;
  v3 = sub_2441F6F0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2441F4940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2441F1010(&qword_27EDDB418, &qword_2441F7D00);
  result = sub_2441F6F1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2441F6FAC();

        sub_2441F6E1C();
        result = sub_2441F6FBC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2441F4B80(void *a1)
{
  v2 = [a1 localIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2441F6DFC();

  return v3;
}

uint64_t sub_2441F4BF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2441F6F6C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2441F34B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2441F1104(0, &qword_27EDDB410, 0x277CF1068);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2441F4E68();
        for (i = 0; i != v7; ++i)
        {
          sub_2441F1010(&qword_27EDDB428, &qword_2441F7D10);
          v9 = sub_2441F4D64(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2441F4D64(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2441F4B74(a3);
  sub_2441F6100(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x245D5B740](a2, a3);
  }

  *a1 = v7;
  return sub_2441F4DF0;
}

uint64_t sub_2441F4E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2441F4E68()
{
  result = qword_27EDDB430;
  if (!qword_27EDDB430)
  {
    sub_2441F2664(&qword_27EDDB428, &qword_2441F7D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDB430);
  }

  return result;
}

__n128 sub_2441F4EDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2441F4EE8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2441F4F28(uint64_t result, int a2, int a3)
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

void sub_2441F4FA4()
{
  *(v1 - 80) = v0;
  *(v1 - 72) = 0;
  *(v1 - 112) = MEMORY[0x277D85DD0];
}

uint64_t sub_2441F5010(uint64_t a1)
{
  sub_2441F4DF8(v2, 1, 1, a1);

  return sub_2441F4DF8(v1, 1, 1, a1);
}

id sub_2441F5058()
{

  return sub_2441F3FEC(v1, v0, 1, 1, 0);
}

uint64_t sub_2441F5084()
{

  return swift_beginAccess();
}

uint64_t sub_2441F50A4(uint64_t a1)
{
  *(a1 + 16) = 0;

  return sub_2441F6CEC();
}

uint64_t sub_2441F50C4()
{
}

uint64_t sub_2441F50F0()
{
  v2 = *(v0 - 72);
}

id sub_2441F510C(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2441F5134()
{

  return sub_2441F10A4(v1, v0);
}

uint64_t sub_2441F514C()
{

  return sub_2441F10A4(v1, v0);
}

uint64_t getEnumTagSinglePayload for SocialContextStreamUtil(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SocialContextStreamUtil(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_2441F526C(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  if (a1)
  {
    v3 = [a1 discoveredPersons];
    sub_2441F1104(0, &qword_27EDDB250, 0x277CF1058);
    v2 = sub_2441F6E5C();
  }

  v4 = sub_2441F34B0(v2);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v34 = MEMORY[0x277D84F90];
    v32 = v2 & 0xFFFFFFFFFFFFFF8;
    v33 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v8 = MEMORY[0x245D5B740](v6, v2);
      }

      else
      {
        if (v6 >= *(v32 + 16))
        {
          goto LABEL_36;
        }

        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        sub_2441F6E6C();
LABEL_31:
        sub_2441F6E7C();
        v29 = v36;
        goto LABEL_32;
      }

      sub_2441F10A4(v8, &selRef_identifier);
      if (v11 || (sub_2441F10A4(v9, &selRef_contactID), v12))
      {

        if ([v9 flags] == 256)
        {
          v35 = sub_2441F10A4(v9, &selRef_name);
          v14 = v13;
          v1 = sub_2441F10A4(v9, &selRef_contactID);
          v16 = v15;
          v17 = sub_2441F10A4(v9, &selRef_identifier);
          v18 = v2;
          v19 = v5;
          v21 = v20;
          v22 = objc_allocWithZone(MEMORY[0x277CF1068]);
          v31 = v21;
          v5 = v19;
          v2 = v18;
          v23 = v16;
          v7 = v33;
          v24 = sub_2441F6440(v35, v14, 0, 0, 0, 0, v1, v23, v17, v31);
          if (v24)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_2441F10A4(v9, &selRef_identifier);
          if (v25)
          {
            v1 = v25;
          }

          else
          {
            v1 = 0xE000000000000000;
          }

          v26 = sub_2441F55C8();

          if (v26)
          {
            v24 = sub_2441F5E28(v26);

            if (v24)
            {
LABEL_20:
              v27 = v24;
              MEMORY[0x245D5B640]();
              if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2441F6E6C();
              }

              sub_2441F6E7C();

              v34 = v36;
              goto LABEL_24;
            }
          }
        }
      }

LABEL_24:
      ++v6;
      if (v10 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_28:

  v28 = sub_2441F5A94();
  if (!v28)
  {
    return v34;
  }

  v1 = v28;
  v29 = v34;
  if (sub_2441F5E28(v28))
  {
    MEMORY[0x245D5B640]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_32:

  return v29;
}

id sub_2441F55C8()
{
  v42[1] = *MEMORY[0x277D85DE8];
  sub_2441F1010(&qword_27EDDB440, &qword_2441F7E00);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277CBD018];
  *(v1 + 16) = xmmword_2441F7D50;
  v3 = *v2;
  v4 = *MEMORY[0x277CBD000];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v6 = *MEMORY[0x277CBD098];
  *(v1 + 48) = *MEMORY[0x277CBCFC0];
  *(v1 + 56) = v6;
  v7 = *(v0 + 16);
  v8 = objc_opt_self();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = sub_2441F6DEC();
  v14 = [v8 predicateForContactsMatchingEmailAddress_];

  sub_2441F1010(&qword_27EDDB448, &qword_2441F7D98);
  v15 = sub_2441F6E4C();
  v42[0] = 0;
  v16 = [v7 unifiedContactsMatchingPredicate:v14 keysToFetch:v15 error:v42];

  v17 = v42[0];
  if (!v16)
  {
    v20 = v42[0];

LABEL_5:
    v21 = sub_2441F6CBC();

    swift_willThrow();
    if (qword_27EDDB160 != -1)
    {
      sub_2441F27B0();
    }

    v22 = sub_2441F6D9C();
    sub_2441F0E24(v22, qword_27EDDB498);
    v23 = sub_2441F6D7C();
    v24 = sub_2441F6E9C();
    if (os_log_type_enabled(v23, v24))
    {
      *sub_2441F6154() = 0;
      sub_2441F14C0(&dword_2441EE000, v25, v26, "Exception: Couldn't obtain new contact");
      sub_2441F1488();
    }

    goto LABEL_21;
  }

  sub_2441F1104(0, &qword_27EDDB450, 0x277CBDA58);
  v18 = sub_2441F6E5C();
  v19 = v17;

  if (sub_2441F34B0(v18))
  {

    goto LABEL_12;
  }

  sub_2441F1104(0, &unk_27EDDB458, 0x277CBDB70);

  v27 = sub_2441F5A20();
  v28 = [v8 predicateForContactsMatchingPhoneNumber_];

  v29 = sub_2441F6E4C();

  v42[0] = 0;
  v30 = [v7 unifiedContactsMatchingPredicate:v28 keysToFetch:v29 error:v42];

  v31 = v42[0];
  if (!v30)
  {
    v20 = v42[0];
    goto LABEL_5;
  }

  v18 = sub_2441F6E5C();
  v32 = v31;

LABEL_12:
  if (!sub_2441F34B0(v18))
  {

    if (qword_27EDDB160 == -1)
    {
LABEL_18:
      v35 = sub_2441F6D9C();
      sub_2441F0E24(v35, qword_27EDDB498);
      v36 = sub_2441F6D7C();
      v37 = sub_2441F6E9C();
      if (os_log_type_enabled(v36, v37))
      {
        *sub_2441F6154() = 0;
        sub_2441F6134(&dword_2441EE000, v38, v39, "Exception: No new contact returned");
        sub_2441F1488();
      }

LABEL_21:
      v34 = 0;
      goto LABEL_22;
    }

LABEL_26:
    sub_2441F27B0();
    goto LABEL_18;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x245D5B740](0, v18);
    goto LABEL_16;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  v33 = *(v18 + 32);
LABEL_16:
  v34 = v33;

LABEL_22:
  v40 = *MEMORY[0x277D85DE8];
  return v34;
}

id sub_2441F5A20()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2441F6DEC();

  v2 = [v0 initWithStringValue_];

  return v2;
}

id sub_2441F5A94()
{
  v34[1] = *MEMORY[0x277D85DE8];
  sub_2441F1010(&qword_27EDDB440, &qword_2441F7E00);
  v1 = swift_allocObject();
  v2 = MEMORY[0x277CBD018];
  *(v1 + 16) = xmmword_2441F7D50;
  v3 = *v2;
  v4 = *MEMORY[0x277CBD000];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v6 = *MEMORY[0x277CBD098];
  *(v1 + 48) = *MEMORY[0x277CBCFC0];
  *(v1 + 56) = v6;
  v7 = *(v0 + 16);
  v8 = objc_opt_self();
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = [v8 nm_predicateForMeContact];
  sub_2441F1010(&qword_27EDDB448, &qword_2441F7D98);
  v14 = sub_2441F6E4C();

  v34[0] = 0;
  v15 = [v7 unifiedContactsMatchingPredicate:v13 keysToFetch:v14 error:v34];

  v16 = v34[0];
  if (!v15)
  {
    v21 = v34[0];
    v17 = sub_2441F6CBC();

    swift_willThrow();
    if (qword_27EDDB160 == -1)
    {
LABEL_8:
      v22 = sub_2441F6D9C();
      sub_2441F0E24(v22, qword_27EDDB498);
      v23 = sub_2441F6D7C();
      v24 = sub_2441F6E9C();
      if (os_log_type_enabled(v23, v24))
      {
        *sub_2441F6154() = 0;
        sub_2441F14C0(&dword_2441EE000, v25, v26, "Exception: Couldn't obtain me contact");
        sub_2441F1488();
      }

LABEL_16:
      v20 = 0;
      goto LABEL_17;
    }

LABEL_20:
    sub_2441F27B0();
    goto LABEL_8;
  }

  sub_2441F1104(0, &qword_27EDDB450, 0x277CBDA58);
  v17 = sub_2441F6E5C();
  v18 = v16;

  if (!sub_2441F34B0(v17))
  {

    if (qword_27EDDB160 != -1)
    {
      sub_2441F27B0();
    }

    v27 = sub_2441F6D9C();
    sub_2441F0E24(v27, qword_27EDDB498);
    v28 = sub_2441F6D7C();
    v29 = sub_2441F6E9C();
    if (os_log_type_enabled(v28, v29))
    {
      *sub_2441F6154() = 0;
      sub_2441F6134(&dword_2441EE000, v30, v31, "Exception: No me contact returned");
      sub_2441F1488();
    }

    goto LABEL_16;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x245D5B740](0, v17);
    goto LABEL_6;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v19 = *(v17 + 32);
LABEL_6:
  v20 = v19;

LABEL_17:
  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_2441F5DCC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2441F5E28(void *a1)
{
  v2 = [a1 phoneNumbers];
  sub_2441F1010(&qword_27EDDB468, &qword_2441F7DA0);
  v3 = sub_2441F6E5C();

  result = sub_2441F34B0(v3);
  if (result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x245D5B740](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;

    v7 = [v6 value];

    if (v7)
    {
      v8 = [v7 stringValue];
      v9 = sub_2441F6DFC();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }
  }

  else
  {

    v9 = 0;
    v11 = 0;
    v7 = 0;
  }

  v12 = [a1 emailAddresses];
  v13 = sub_2441F6E5C();

  result = sub_2441F34B0(v13);
  v32 = v7;
  if (!result)
  {
    v17 = v11;
    v18 = v9;

    v19 = 0;
    v21 = 0;
    v16 = 0;
LABEL_17:
    v22 = [a1 givenName];
    v23 = sub_2441F6DFC();
    v25 = v24;

    v26 = [a1 identifier];
    v27 = sub_2441F6DFC();
    v29 = v28;

    v30 = objc_allocWithZone(MEMORY[0x277CF1068]);
    v31 = sub_2441F6440(v23, v25, v18, v17, v19, v21, v27, v29, 0, 0);

    return v31;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x245D5B740](0, v13);
LABEL_13:
    v15 = v14;

    v16 = [v15 value];

    v17 = v11;
    v18 = v9;
    if (v16)
    {
      v19 = sub_2441F6DFC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    goto LABEL_17;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
    goto LABEL_13;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_2441F6100(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_2441F6134(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2441F6154()
{

  return swift_slowAlloc();
}

uint64_t sub_2441F616C(uint64_t a1)
{
  if (!*(sub_2441F6274(a1) + 16))
  {

    return MEMORY[0x277D84F90];
  }

  sub_2441F6AF8(0xD000000000000015, 0x80000002441F8D70);
  v2 = v1;

  if ((v2 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2441F1010(&qword_27EDDB440, &qword_2441F7E00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2441F7DF0;
  v4 = objc_allocWithZone(MEMORY[0x277CF1068]);
  *(v3 + 32) = sub_2441F6440(0, 0, 0, 0, 0, 0, 0, 0, 0xD000000000000017, 0x80000002441F8D90);
  return v3;
}

uint64_t sub_2441F6274(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2441F6EDC();
  }

  else
  {
    sub_2441F1010(&qword_27EDDB470, &qword_2441F7E08);
    v1 = sub_2441F6DDC();
  }

  v2 = v1;
  if (qword_27EDDB160 != -1)
  {
    swift_once();
  }

  v3 = sub_2441F6D9C();
  sub_2441F0E24(v3, qword_27EDDB498);

  v4 = sub_2441F6D7C();
  v5 = sub_2441F6E9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_2441F1010(&qword_27EDDB470, &qword_2441F7E08);
    v8 = sub_2441F6DCC();
    v10 = sub_2441F6588(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2441EE000, v4, v5, "Sounds detected = %s", v6, 0xCu);
    sub_2441F1058(v7);
    MEMORY[0x245D5BBA0](v7, -1, -1);
    MEMORY[0x245D5BBA0](v6, -1, -1);
  }

  return v2;
}

id sub_2441F6440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v14 = sub_2441F6DEC();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_2441F6DEC();

  if (a6)
  {
LABEL_4:
    v16 = sub_2441F6DEC();

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (!a8)
  {
    v17 = 0;
    if (a10)
    {
      goto LABEL_10;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v17 = sub_2441F6DEC();

  if (!a10)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = sub_2441F6DEC();

LABEL_13:
  v19 = [v10 initWithName:v14 phoneNumber:v15 emailAddress:v16 cnContactID:v17 unknownPersonID:v18];

  return v19;
}

uint64_t sub_2441F6588(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2441F664C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2441F6C24(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_2441F1058(v11);
  return v7;
}

unint64_t sub_2441F664C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2441F674C(a5, a6);
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
    result = sub_2441F6F5C();
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

uint64_t sub_2441F674C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2441F6798(a1, a2);
  sub_2441F68B0(&unk_285794B28);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2441F6798(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2441F6E2C())
  {
    result = sub_2441F6994(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2441F6F2C();
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
          result = sub_2441F6F5C();
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

uint64_t sub_2441F68B0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2441F6A04(result, v8, 1, v3);
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

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2441F6994(uint64_t a1, uint64_t a2)
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

  sub_2441F1010(&qword_27EDDB478, &unk_2441F7E10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2441F6A04(char *result, int64_t a2, char a3, char *a4)
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
    sub_2441F1010(&qword_27EDDB478, &unk_2441F7E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_2441F6AF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2441F6FAC();
  sub_2441F6E1C();
  v6 = sub_2441F6FBC();

  return sub_2441F6B70(a1, a2, v6);
}

unint64_t sub_2441F6B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2441F6F7C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2441F6C24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}