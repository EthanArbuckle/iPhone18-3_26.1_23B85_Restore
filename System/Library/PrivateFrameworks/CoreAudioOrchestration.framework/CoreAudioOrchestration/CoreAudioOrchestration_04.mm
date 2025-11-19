uint64_t sub_2450DFD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2450E01F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2450DFD58(uint64_t a1)
{
  v2 = sub_2450E06A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DFD94(uint64_t a1)
{
  v2 = sub_2450E06A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450DFDD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2450E03BC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_2450DFE2C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF81C0, &unk_2450F04D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for UseCaseID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7920, &qword_2450ED140);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E0014();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5D28();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450E0014()
{
  result = qword_27EDF81C8;
  if (!qword_27EDF81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81C8);
  }

  return result;
}

unint64_t sub_2450E008C()
{
  result = qword_27EDF81D8;
  if (!qword_27EDF81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81D8);
  }

  return result;
}

uint64_t sub_2450E010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E014C()
{
  result = qword_27EDF81E0;
  if (!qword_27EDF81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81E0);
  }

  return result;
}

unint64_t sub_2450E01A4()
{
  result = qword_27EDF81E8;
  if (!qword_27EDF81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81E8);
  }

  return result;
}

uint64_t sub_2450E01F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4955656369766564 && a2 == 0xE900000000000044 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002450F4240 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002450F4260 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002450F4280 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

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

uint64_t sub_2450E03BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF81F0, &unk_2450F06B0);
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v23 - v7;
  v34 = &type metadata for DevicePropertyDescription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7928, &qword_2450ED148);
  sub_2450E5818();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E06A8();
  sub_2450E5F48();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = v5;
    v27 = a2;
    v33 = 0;
    v11 = v28;
    v12 = sub_2450E5CC8();
    v14 = v13;
    v26 = v12;

    v32 = 1;
    v15 = sub_2450E5C68();
    v17 = v16;
    v18 = v15;
    v31 = 2;
    v25 = sub_2450E5D28();
    v30 = 3;
    v24 = sub_2450E5D28();
    v29 = 4;
    v19 = sub_2450E5D28();
    (*(v10 + 8))(v8, v11);

    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    v21 = v27;
    *v27 = v26;
    v21[1] = v14;
    v21[2] = v18;
    v21[3] = v17;
    v22 = v24;
    *(v21 + 8) = v25;
    *(v21 + 9) = v22;
    *(v21 + 10) = v19;
  }

  return result;
}

unint64_t sub_2450E06A8()
{
  result = qword_27EDF81F8;
  if (!qword_27EDF81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81F8);
  }

  return result;
}

unint64_t sub_2450E0710()
{
  result = qword_27EDF8208;
  if (!qword_27EDF8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8208);
  }

  return result;
}

unint64_t sub_2450E0768()
{
  result = qword_27EDF8210;
  if (!qword_27EDF8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8210);
  }

  return result;
}

unint64_t sub_2450E07C0()
{
  result = qword_27EDF8218;
  if (!qword_27EDF8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8218);
  }

  return result;
}

uint64_t sub_2450E0814()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2450E0878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionHandlers();
  v15[3] = v4;
  v15[4] = &off_285803750;
  v15[0] = a1;
  v5 = *(a2 + 16);

  [v5 lock];
  swift_beginAccess();
  v6 = sub_2450DC878(*(a2 + 24));
  [v5 unlock];
  if (v6)
  {
    v7 = *__swift_project_boxed_opaque_existential_1(v15, v4);
    v14[3] = v4;
    v14[4] = &off_285803750;
    v14[0] = v7;
    sub_2450AD6FC(v14, v13);
    swift_beginAccess();

    sub_2450E0FA0(v13, v6 + 16);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v8 = sub_2450E5638();
    __swift_project_value_buffer(v8, qword_27EE0AEC8);
    v9 = sub_2450E5628();
    v10 = sub_2450E59A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24508F000, v9, v10, "HAD is missing it's hardware availability behavior!", v11, 2u);
      MEMORY[0x245D63500](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

void sub_2450E0A40(int a1)
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_24508F000, v4, v5, "notifyHardwareAvailabilitySubscribers - notifying for: %u", v6, 8u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    v8 = *(v1 + 16);
    *&v31 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
    v36[0] = sub_2450E5818();
    v36[1] = v9;
    v37 = a1;
    v38 = 0;
    v39 = 0;
    v40 = 1;
    v10 = sub_2450D25A4(v36);

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        sub_2450E1010(v12, &v31);
        if (*(&v32 + 1))
        {
          v29 = v34;
          v30[0] = v35[0];
          *(v30 + 9) = *(v35 + 9);
          v27[0] = v31;
          v27[1] = v32;
          v28 = v33;
          if ((v34 & 1) == 0)
          {
            v13 = *(&v28 + 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8168, &qword_2450F01E0);
            v14 = sub_2450E5818();
            v16 = v15;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F20, &qword_2450EEC70);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2450EBD40;
            *(inited + 56) = &type metadata for IncomingConfigurationEventHeader;
            *(inited + 64) = sub_2450E1080();
            *(inited + 32) = v14;
            *(inited + 40) = v16;
            *(inited + 48) = v13;
            sub_2450AD6FC(v27, inited + 72);
            v18 = sub_2450B68D0(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
            swift_arrayDestroy();
            sub_2450BCC90(v18);

            v19 = sub_2450E5798();
          }

          sub_2450C5B18(v27);
        }

        else
        {
          sub_2450D4D00(&v31);
        }

        v12 += 96;
        --v11;
      }

      while (v11);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_2450E5628();
    v20 = sub_2450E59A8();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v31 = v22;
      *v21 = 136315138;
      *&v27[0] = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
      v23 = sub_2450E5818();
      v25 = sub_2450C0EE8(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24508F000, oslog, v20, "Tried to notify for %s, but no callback was set", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x245D63500](v22, -1, -1);
      MEMORY[0x245D63500](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2450E0EB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);

    do
    {
      v5 = *v4;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v10 = type metadata accessor for SubscriptionHandlers();
        v11 = &off_285803750;
        v9[0] = v2;
        v7 = *__swift_project_boxed_opaque_existential_1(v9, v10);
        swift_unknownObjectRetain();

        sub_2450E0878(v7, v5);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_2450E0FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67D8, &unk_2450F0830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450E1010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D38, &qword_2450EEC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2450E1080()
{
  result = qword_27EDF8220;
  if (!qword_27EDF8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8220);
  }

  return result;
}

uint64_t sub_2450E111C(uint64_t a1)
{
  v2 = sub_2450E1E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1158(uint64_t a1)
{
  v2 = sub_2450E1E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E1194@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450E1CD0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2450E11C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF82A0, &qword_2450F0B28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E1E64();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2450E1328()
{
  result = qword_27EDF8228;
  if (!qword_27EDF8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8228);
  }

  return result;
}

uint64_t sub_2450E137C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8328, &qword_2450F1020);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E2CF0();
  sub_2450E5F58();
  v17 = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v16 = 1;
    sub_2450E5D88();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2450E151C(uint64_t a1)
{
  v2 = sub_2450E2CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1558(uint64_t a1)
{
  v2 = sub_2450E2CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E1594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450E1EB8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2450E1634(uint64_t a1)
{
  v2 = sub_2450E22A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1670(uint64_t a1)
{
  v2 = sub_2450E22A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450E1750()
{
  result = qword_27EDF8230;
  if (!qword_27EDF8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8230);
  }

  return result;
}

uint64_t sub_2450E17E8(uint64_t a1)
{
  v2 = sub_2450E24E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1824(uint64_t a1)
{
  v2 = sub_2450E24E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E188C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2450E1938()
{
  result = qword_27EDF8238;
  if (!qword_27EDF8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8238);
  }

  return result;
}

uint64_t sub_2450E19D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v17[2] = a3;
  v17[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a7();
  sub_2450E5F58();
  v19 = 0;
  v15 = v17[3];
  sub_2450E5DC8();
  if (!v15)
  {
    v18 = 1;
    sub_2450E5DF8();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2450E1B60(uint64_t a1)
{
  v2 = sub_2450E271C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1B9C(uint64_t a1)
{
  v2 = sub_2450E271C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450E1C7C()
{
  result = qword_27EDF8240;
  if (!qword_27EDF8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8240);
  }

  return result;
}

uint64_t sub_2450E1CD0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8248, &unk_2450F0AD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[1] = &type metadata for CreateConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D88, &qword_2450EDE20);
  sub_2450E5818();

  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E1E64();
  sub_2450E5F48();
  if (!v1)
  {
    v9 = sub_2450E5CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

unint64_t sub_2450E1E64()
{
  result = qword_27EDF8250;
  if (!qword_27EDF8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8250);
  }

  return result;
}

uint64_t sub_2450E1EB8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8318, &unk_2450F1010);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for CreateConfigurationResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78F0, qword_2450ED020);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E2CF0();
  sub_2450E5F48();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_2450E5CC8();
    v10[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_2450E20BC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8258, &unk_2450F0AE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for ActivateConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D70, &unk_2450EDDF8);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E22A4();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450E22A4()
{
  result = qword_27EDF8260;
  if (!qword_27EDF8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8260);
  }

  return result;
}

uint64_t sub_2450E22F8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8268, &unk_2450F0AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for DeactivateConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D68, &qword_2450EDDF0);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E24E0();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450E24E0()
{
  result = qword_27EDF8270;
  if (!qword_27EDF8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8270);
  }

  return result;
}

uint64_t sub_2450E2534(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8278, &unk_2450F0B00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for DestroyConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D60, &qword_2450EDDE8);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E271C();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450E271C()
{
  result = qword_27EDF8280;
  if (!qword_27EDF8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8280);
  }

  return result;
}

unint64_t sub_2450E27C4()
{
  result = qword_27EDF82A8;
  if (!qword_27EDF82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82A8);
  }

  return result;
}

unint64_t sub_2450E281C()
{
  result = qword_27EDF82B0;
  if (!qword_27EDF82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82B0);
  }

  return result;
}

unint64_t sub_2450E2874()
{
  result = qword_27EDF82B8;
  if (!qword_27EDF82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82B8);
  }

  return result;
}

unint64_t sub_2450E28CC()
{
  result = qword_27EDF82C0;
  if (!qword_27EDF82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82C0);
  }

  return result;
}

uint64_t sub_2450E294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E2988()
{
  result = qword_27EDF82C8;
  if (!qword_27EDF82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82C8);
  }

  return result;
}

unint64_t sub_2450E29DC()
{
  result = qword_27EDF82D0;
  if (!qword_27EDF82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82D0);
  }

  return result;
}

unint64_t sub_2450E2A34()
{
  result = qword_27EDF82D8;
  if (!qword_27EDF82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82D8);
  }

  return result;
}

unint64_t sub_2450E2A8C()
{
  result = qword_27EDF82E0;
  if (!qword_27EDF82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82E0);
  }

  return result;
}

unint64_t sub_2450E2AE4()
{
  result = qword_27EDF82E8;
  if (!qword_27EDF82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82E8);
  }

  return result;
}

unint64_t sub_2450E2B3C()
{
  result = qword_27EDF82F0;
  if (!qword_27EDF82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82F0);
  }

  return result;
}

unint64_t sub_2450E2B94()
{
  result = qword_27EDF82F8;
  if (!qword_27EDF82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82F8);
  }

  return result;
}

unint64_t sub_2450E2BEC()
{
  result = qword_27EDF8300;
  if (!qword_27EDF8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8300);
  }

  return result;
}

unint64_t sub_2450E2C44()
{
  result = qword_27EDF8308;
  if (!qword_27EDF8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8308);
  }

  return result;
}

unint64_t sub_2450E2C9C()
{
  result = qword_27EDF8310;
  if (!qword_27EDF8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8310);
  }

  return result;
}

unint64_t sub_2450E2CF0()
{
  result = qword_27EDF8320;
  if (!qword_27EDF8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8320);
  }

  return result;
}

unint64_t sub_2450E2D58()
{
  result = qword_27EDF8330;
  if (!qword_27EDF8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8330);
  }

  return result;
}

unint64_t sub_2450E2DB0()
{
  result = qword_27EDF8338;
  if (!qword_27EDF8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8338);
  }

  return result;
}

unint64_t sub_2450E2E08()
{
  result = qword_27EDF8340;
  if (!qword_27EDF8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8340);
  }

  return result;
}

uint64_t sub_2450E2EC0(uint64_t a1)
{
  v2 = sub_2450E3808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E2EFC(uint64_t a1)
{
  v2 = sub_2450E3808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E2F38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450E3674(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2450E2F64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8380, &qword_2450F12E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3808();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2450E30CC()
{
  result = qword_27EDF8348;
  if (!qword_27EDF8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8348);
  }

  return result;
}

uint64_t sub_2450E3120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF83D8, &qword_2450F15C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3FEC();
  sub_2450E5F58();
  v17 = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v16 = 1;
    sub_2450E5D88();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2450E32C0(uint64_t a1)
{
  v2 = sub_2450E3FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E32FC(uint64_t a1)
{
  v2 = sub_2450E3FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E3338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450E385C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2450E3394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8378, &qword_2450F12E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3C48();
  sub_2450E5F58();
  v15 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v14 = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2450E352C(uint64_t a1)
{
  v2 = sub_2450E3C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E3568(uint64_t a1)
{
  v2 = sub_2450E3C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E35A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450E3A60(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2450E3620()
{
  result = qword_27EDF8350;
  if (!qword_27EDF8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8350);
  }

  return result;
}

uint64_t sub_2450E3674(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8358, &unk_2450F12C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[1] = &type metadata for SubscribeHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D50, &qword_2450EDDD8);
  sub_2450E5818();

  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3808();
  sub_2450E5F48();
  if (!v1)
  {
    v9 = sub_2450E5CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

unint64_t sub_2450E3808()
{
  result = qword_27EDF8360;
  if (!qword_27EDF8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8360);
  }

  return result;
}

uint64_t sub_2450E385C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF83C8, &unk_2450F15B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for SubscriptionResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78D0, &qword_2450ED010);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3FEC();
  sub_2450E5F48();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_2450E5CC8();
    v10[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_2450E3A60(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8368, &unk_2450F12D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v11 = &type metadata for UnsubscribeHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D40, &unk_2450EDDB0);
  sub_2450E5818();

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3C48();
  sub_2450E5F48();
  if (!v1)
  {
    v10[7] = 0;
    v8 = sub_2450E5CC8();
    v10[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_2450E3C48()
{
  result = qword_27EDF8370;
  if (!qword_27EDF8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8370);
  }

  return result;
}

unint64_t sub_2450E3CD0()
{
  result = qword_27EDF8388;
  if (!qword_27EDF8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8388);
  }

  return result;
}

unint64_t sub_2450E3D28()
{
  result = qword_27EDF8390;
  if (!qword_27EDF8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8390);
  }

  return result;
}

uint64_t sub_2450E3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E3DE4()
{
  result = qword_27EDF8398;
  if (!qword_27EDF8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8398);
  }

  return result;
}

unint64_t sub_2450E3E38()
{
  result = qword_27EDF83A0;
  if (!qword_27EDF83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83A0);
  }

  return result;
}

unint64_t sub_2450E3E90()
{
  result = qword_27EDF83A8;
  if (!qword_27EDF83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83A8);
  }

  return result;
}

unint64_t sub_2450E3EE8()
{
  result = qword_27EDF83B0;
  if (!qword_27EDF83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83B0);
  }

  return result;
}

unint64_t sub_2450E3F40()
{
  result = qword_27EDF83B8;
  if (!qword_27EDF83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83B8);
  }

  return result;
}

unint64_t sub_2450E3F98()
{
  result = qword_27EDF83C0;
  if (!qword_27EDF83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83C0);
  }

  return result;
}

unint64_t sub_2450E3FEC()
{
  result = qword_27EDF83D0;
  if (!qword_27EDF83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83D0);
  }

  return result;
}

unint64_t sub_2450E4054()
{
  result = qword_27EDF83E0;
  if (!qword_27EDF83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83E0);
  }

  return result;
}

unint64_t sub_2450E40AC()
{
  result = qword_27EDF83E8;
  if (!qword_27EDF83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83E8);
  }

  return result;
}

unint64_t sub_2450E4104()
{
  result = qword_27EDF83F0;
  if (!qword_27EDF83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83F0);
  }

  return result;
}

uint64_t sub_2450E4170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2450E41B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450E4210(uint64_t a1)
{
  v2 = sub_2450E4A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E424C(uint64_t a1)
{
  v2 = sub_2450E4A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E4288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2450E48CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2450E42B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8428, &qword_2450F1860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4A60();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2450E43F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8440, &qword_2450F1878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4E20();
  sub_2450E5F58();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_2450E5DC8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 4);
  v17[14] = 1;
  sub_2450E5E18();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  sub_2450E5D68();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2450E4590()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x73654D6775626564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2450E45E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2450E4AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2450E4610(uint64_t a1)
{
  v2 = sub_2450E4E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E464C(uint64_t a1)
{
  v2 = sub_2450E4E20();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450E4688@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2450E4BCC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_2450E4714()
{
  result = qword_27EDF83F8;
  if (!qword_27EDF83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83F8);
  }

  return result;
}

unint64_t sub_2450E4768()
{
  result = qword_27EDF8400;
  if (!qword_27EDF8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8400);
  }

  return result;
}

uint64_t sub_2450E47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E4824()
{
  result = qword_27EDF8408;
  if (!qword_27EDF8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8408);
  }

  return result;
}

unint64_t sub_2450E4878()
{
  result = qword_27EDF8410;
  if (!qword_27EDF8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8410);
  }

  return result;
}

uint64_t sub_2450E48CC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8418, &unk_2450F1850);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[1] = &type metadata for StatusResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78E0, &qword_2450ED018);
  sub_2450E5818();

  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4A60();
  sub_2450E5F48();
  if (!v1)
  {
    v9 = sub_2450E5CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

unint64_t sub_2450E4A60()
{
  result = qword_27EDF8420;
  if (!qword_27EDF8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8420);
  }

  return result;
}

uint64_t sub_2450E4AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73654D6775626564 && a2 == 0xEC00000065676173)
  {

    return 2;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2450E4BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8430, &qword_2450F1868);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v25 = &type metadata for StatusDescription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  sub_2450E5818();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4E20();
  sub_2450E5F48();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v10 = v5;
    v11 = v21;
    v24 = 0;
    v12 = sub_2450E5CC8();
    v14 = v13;
    v20 = v12;

    v23 = 1;
    HIDWORD(v19) = sub_2450E5D18();
    v22 = 2;
    v15 = sub_2450E5C68();
    v17 = v16;
    (*(v10 + 8))(v8, v4);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *v11 = v20;
    *(v11 + 8) = v14;
    *(v11 + 16) = HIDWORD(v19);
    *(v11 + 24) = v15;
    *(v11 + 32) = v17;
  }

  return result;
}

unint64_t sub_2450E4E20()
{
  result = qword_27EDF8438;
  if (!qword_27EDF8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8438);
  }

  return result;
}

unint64_t sub_2450E4E98()
{
  result = qword_27EDF8448;
  if (!qword_27EDF8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8448);
  }

  return result;
}

unint64_t sub_2450E4EF0()
{
  result = qword_27EDF8450;
  if (!qword_27EDF8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8450);
  }

  return result;
}

unint64_t sub_2450E4F48()
{
  result = qword_27EDF8458;
  if (!qword_27EDF8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8458);
  }

  return result;
}

unint64_t sub_2450E4FA0()
{
  result = qword_27EDF8460;
  if (!qword_27EDF8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8460);
  }

  return result;
}

unint64_t sub_2450E4FF8()
{
  result = qword_27EDF8468;
  if (!qword_27EDF8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8468);
  }

  return result;
}

unint64_t sub_2450E5050()
{
  result = qword_27EDF8470;
  if (!qword_27EDF8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8470);
  }

  return result;
}

uint64_t sub_2450E50E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2450AD6FC(a1, a2);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = 0;
  *(a2 + 76) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_getDynamicType() == &type metadata for IsolatedUseCaseDevicesAvailabilityChanged)
  {
    sub_2450AD6FC(a1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    if (swift_dynamicCast())
    {

      *(a2 + 72) = v16;
      *(a2 + 76) = 0;
      return result;
    }

    sub_2450E52A0();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 2;
  }

  else
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 24))(v8, v9);
    v12 = v11;
    sub_2450E52A0();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
  }

  swift_willThrow();
  return sub_2450C5B18(a2);
}

unint64_t sub_2450E52A0()
{
  result = qword_27EDF8478;
  if (!qword_27EDF8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22CoreAudioOrchestration17SubscriptionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2450E5310(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sIsolatedCoreAudioOrchestrationLog()
{
  if (__cxa_guard_acquire(&qword_27EDF8488))
  {
    _MergedGlobals = os_log_create("com.apple.coreaudio", "CoreAudioOrchestration");

    __cxa_guard_release(&qword_27EDF8488);
  }
}

{
  if (__cxa_guard_acquire(qword_27EDF8498))
  {
    _MergedGlobals_0 = os_log_create("com.apple.coreaudio", "CoreAudioOrchestration");

    __cxa_guard_release(qword_27EDF8498);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}