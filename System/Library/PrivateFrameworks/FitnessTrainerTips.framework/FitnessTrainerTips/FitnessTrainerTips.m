unint64_t sub_24B7AD294()
{
  result = qword_28110AA30;
  if (!qword_28110AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA30);
  }

  return result;
}

uint64_t sub_24B7AD330@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B7AD3A8()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24B7AD410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7ADCF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7AD450(uint64_t a1)
{
  v2 = sub_24B7ADA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD48C(uint64_t a1)
{
  v2 = sub_24B7ADA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AD4D4(uint64_t a1)
{
  v2 = sub_24B7ADAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD510(uint64_t a1)
{
  v2 = sub_24B7ADAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AD54C(uint64_t a1)
{
  v2 = sub_24B7ADB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD588(uint64_t a1)
{
  v2 = sub_24B7ADB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AD5C4(uint64_t a1)
{
  v2 = sub_24B7ADA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AD600(uint64_t a1)
{
  v2 = sub_24B7ADA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionState.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F48, &qword_24B7B5840);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F50, &qword_24B7B5848);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F58, &qword_24B7B5850);
  v24 = *(v10 - 8);
  v11 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057F60, &qword_24B7B5858);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7ADA48();
  sub_24B7B55DC();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_24B7ADAF0();
      sub_24B7B550C();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_24B7ADA9C();
      v21 = v27;
      sub_24B7B550C();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_24B7ADB44();
    sub_24B7B550C();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
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

unint64_t sub_24B7ADA48()
{
  result = qword_27F057F68;
  if (!qword_27F057F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F68);
  }

  return result;
}

unint64_t sub_24B7ADA9C()
{
  result = qword_27F057F70;
  if (!qword_27F057F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F70);
  }

  return result;
}

unint64_t sub_24B7ADAF0()
{
  result = qword_27F057F78;
  if (!qword_27F057F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F78);
  }

  return result;
}

unint64_t sub_24B7ADB44()
{
  result = qword_27F057F80;
  if (!qword_27F057F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F80);
  }

  return result;
}

uint64_t sub_24B7ADBB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B7ADE18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_24B7B559C();
  MEMORY[0x24C24A040](a1);
  return sub_24B7B55BC();
}

uint64_t sub_24B7ADC68()
{
  v1 = *v0;
  sub_24B7B559C();
  MEMORY[0x24C24A040](v1);
  return sub_24B7B55BC();
}

uint64_t sub_24B7ADCB0()
{
  v1 = *v0;
  sub_24B7B559C();
  MEMORY[0x24C24A040](v1);
  return sub_24B7B55BC();
}

uint64_t sub_24B7ADCF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B7B554C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_24B7B554C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B7B554C();

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

uint64_t sub_24B7ADE18(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FD8, &qword_24B7B5CA0);
  v33 = *(v36 - 8);
  v2 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FE0, &qword_24B7B5CA8);
  v35 = *(v37 - 8);
  v4 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FE8, &qword_24B7B5CB0);
  v34 = *(v7 - 8);
  v8 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FF0, &qword_24B7B5CB8);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B7ADA48();
  v18 = v39;
  sub_24B7B55CC();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_24B7B54FC();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_24B7AE910();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_24B7ADAF0();
          sub_24B7B54AC();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_24B7ADA9C();
        v29 = v15;
        sub_24B7B54AC();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_24B7ADB44();
        v29 = v15;
        sub_24B7B54AC();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_24B7B549C();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FF8, &unk_24B7B5CC0) + 48);
    *v27 = &type metadata for SubscriptionState;
    sub_24B7B54BC();
    sub_24B7B548C();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_24B7AE38C()
{
  result = qword_27F057F88;
  if (!qword_27F057F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrainerTipUpsellMonitorAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7AE588()
{
  result = qword_27F057F90;
  if (!qword_27F057F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F90);
  }

  return result;
}

unint64_t sub_24B7AE5E0()
{
  result = qword_27F057F98;
  if (!qword_27F057F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057F98);
  }

  return result;
}

unint64_t sub_24B7AE638()
{
  result = qword_27F057FA0;
  if (!qword_27F057FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FA0);
  }

  return result;
}

unint64_t sub_24B7AE690()
{
  result = qword_27F057FA8;
  if (!qword_27F057FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FA8);
  }

  return result;
}

unint64_t sub_24B7AE6E8()
{
  result = qword_27F057FB0;
  if (!qword_27F057FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FB0);
  }

  return result;
}

unint64_t sub_24B7AE740()
{
  result = qword_27F057FB8;
  if (!qword_27F057FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FB8);
  }

  return result;
}

unint64_t sub_24B7AE798()
{
  result = qword_27F057FC0;
  if (!qword_27F057FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FC0);
  }

  return result;
}

unint64_t sub_24B7AE7F0()
{
  result = qword_27F057FC8;
  if (!qword_27F057FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FC8);
  }

  return result;
}

unint64_t sub_24B7AE848()
{
  result = qword_27F057FD0;
  if (!qword_27F057FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F057FD0);
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

uint64_t sub_24B7AE910()
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

unint64_t sub_24B7AE944()
{
  v1 = 0x6570704177656976;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_24B7AE9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7AFE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7AE9D4(uint64_t a1)
{
  v2 = sub_24B7AF0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AEA10(uint64_t a1)
{
  v2 = sub_24B7AF0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AEA4C(uint64_t a1)
{
  v2 = sub_24B7AF23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AEA88(uint64_t a1)
{
  v2 = sub_24B7AF23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AEACC()
{
  sub_24B7B559C();
  MEMORY[0x24C24A040](0);
  return sub_24B7B55BC();
}

uint64_t sub_24B7AEB38()
{
  sub_24B7B559C();
  MEMORY[0x24C24A040](0);
  return sub_24B7B55BC();
}

uint64_t sub_24B7AEB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7B554C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7AEC04(uint64_t a1)
{
  v2 = sub_24B7AF194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AEC40(uint64_t a1)
{
  v2 = sub_24B7AF194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7AEC7C(uint64_t a1)
{
  v2 = sub_24B7AF140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7AECB8(uint64_t a1)
{
  v2 = sub_24B7AF140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrainerTipUpsellMonitorAction.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058000, &qword_24B7B5CD0);
  v30 = *(v32 - 8);
  v3 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v24 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058008, &qword_24B7B5CD8);
  v29 = *(v31 - 8);
  v5 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v27 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058010, &qword_24B7B5CE0);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058018, &qword_24B7B5CE8);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v24 - v14;
  v16 = *v1;
  v17 = v1[1];
  v18 = *(v1 + 16);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7AF0EC();
  sub_24B7B55DC();
  if (v18 == 2)
  {
    LOBYTE(v33) = 0;
    sub_24B7AF23C();
    sub_24B7B550C();
    (*(v25 + 8))(v10, v26);
    return (*(v12 + 8))(v15, v11);
  }

  if (v18 == 3)
  {
    LOBYTE(v33) = 2;
    sub_24B7AF140();
    v20 = v28;
    sub_24B7B550C();
    (*(v30 + 8))(v20, v32);
    return (*(v12 + 8))(v15, v11);
  }

  LOBYTE(v33) = 1;
  sub_24B7AF194();
  v22 = v27;
  sub_24B7B550C();
  v33 = v16;
  v34 = v17;
  v35 = v18 & 1;
  sub_24B7AF1E8();
  v23 = v31;
  sub_24B7B553C();
  (*(v29 + 8))(v22, v23);
  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_24B7AF0EC()
{
  result = qword_28110AA88;
  if (!qword_28110AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA88);
  }

  return result;
}

unint64_t sub_24B7AF140()
{
  result = qword_28110AA70;
  if (!qword_28110AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA70);
  }

  return result;
}

unint64_t sub_24B7AF194()
{
  result = qword_27F058020;
  if (!qword_27F058020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058020);
  }

  return result;
}

unint64_t sub_24B7AF1E8()
{
  result = qword_27F058028;
  if (!qword_27F058028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058028);
  }

  return result;
}

unint64_t sub_24B7AF23C()
{
  result = qword_27F058030;
  if (!qword_27F058030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058030);
  }

  return result;
}

uint64_t TrainerTipUpsellMonitorAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058038, &qword_24B7B5CF0);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058040, &qword_24B7B5CF8);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058048, &qword_24B7B5D00);
  v48 = *(v12 - 8);
  v13 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058050, &unk_24B7B5D08);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v46 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24B7AF0EC();
  v23 = v55;
  sub_24B7B55CC();
  if (!v23)
  {
    v24 = v54;
    v47 = 0;
    v55 = v17;
    v25 = sub_24B7B54FC();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_24B7B549C();
      swift_allocError();
      v30 = v16;
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F057FF8, &unk_24B7B5CC0) + 48);
      *v32 = &type metadata for TrainerTipUpsellMonitorAction;
      sub_24B7B54BC();
      sub_24B7B548C();
      (*(*(v29 - 8) + 104))(v32, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v55 + 8))(v20, v30);
LABEL_18:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    if (*(v25 + 32))
    {
      if (v27 == 1)
      {
        LOBYTE(v56) = 1;
        sub_24B7AF194();
        v34 = v47;
        sub_24B7B54AC();
        v35 = v53;
        v36 = v55;
        if (v34)
        {
          v37 = *(v55 + 8);
          v38 = v20;
LABEL_17:
          v37(v38, v16);
          goto LABEL_18;
        }

        sub_24B7AF874();
        v43 = v51;
        sub_24B7B54EC();
        (*(v52 + 8))(v11, v43);
        (*(v36 + 8))(v20, v16);
        swift_unknownObjectRelease();
        v44 = v56;
        v45 = v57;
LABEL_25:
        *v35 = v44;
        *(v35 + 16) = v45;
        return __swift_destroy_boxed_opaque_existential_1(v58);
      }

      LOBYTE(v56) = 2;
      sub_24B7AF140();
      v40 = v47;
      sub_24B7B54AC();
      v41 = v55;
      if (v40)
      {
        v37 = *(v55 + 8);
        v38 = v20;
        goto LABEL_17;
      }

      (*(v50 + 8))(v24, v49);
      (*(v41 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v44 = 0uLL;
      v45 = 3;
    }

    else
    {
      LOBYTE(v56) = 0;
      sub_24B7AF23C();
      v39 = v47;
      sub_24B7B54AC();
      if (v39)
      {
        v37 = *(v55 + 8);
        v38 = v20;
        goto LABEL_17;
      }

      (*(v48 + 8))(v15, v12);
      (*(v55 + 8))(v20, v16);
      swift_unknownObjectRelease();
      v44 = 0uLL;
      v45 = 2;
    }

    v35 = v53;
    goto LABEL_25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

unint64_t sub_24B7AF874()
{
  result = qword_27F058058;
  if (!qword_27F058058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058058);
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

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorAction(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TrainerTipUpsellMonitorAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
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
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_24B7AF9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B7AF9CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorAction.TrainerTipPlayerDismissedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrainerTipUpsellMonitorAction.TrainerTipPlayerDismissedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24B7AFB20()
{
  result = qword_27F058060;
  if (!qword_27F058060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058060);
  }

  return result;
}

unint64_t sub_24B7AFB78()
{
  result = qword_27F058068;
  if (!qword_27F058068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058068);
  }

  return result;
}

unint64_t sub_24B7AFBD0()
{
  result = qword_28110AAA0;
  if (!qword_28110AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AAA0);
  }

  return result;
}

unint64_t sub_24B7AFC28()
{
  result = qword_28110AAA8;
  if (!qword_28110AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AAA8);
  }

  return result;
}

unint64_t sub_24B7AFC80()
{
  result = qword_28110AA90;
  if (!qword_28110AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA90);
  }

  return result;
}

unint64_t sub_24B7AFCD8()
{
  result = qword_28110AA98;
  if (!qword_28110AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA98);
  }

  return result;
}

unint64_t sub_24B7AFD30()
{
  result = qword_28110AA60;
  if (!qword_28110AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA60);
  }

  return result;
}

unint64_t sub_24B7AFD88()
{
  result = qword_28110AA68;
  if (!qword_28110AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA68);
  }

  return result;
}

unint64_t sub_24B7AFDE0()
{
  result = qword_28110AA78;
  if (!qword_28110AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA78);
  }

  return result;
}

unint64_t sub_24B7AFE38()
{
  result = qword_28110AA80;
  if (!qword_28110AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA80);
  }

  return result;
}

uint64_t sub_24B7AFE8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000024B7B7660 == a2 || (sub_24B7B554C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024B7B7680 == a2 || (sub_24B7B554C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B7B554C();

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

uint64_t TrainerTipUpsellConfiguration.placementIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall TrainerTipUpsellConfiguration.init(interval:nativeRulesEnabled:placementIdentifier:minimumRatioComplete:subscriptionCheckEnabled:)(FitnessTrainerTips::TrainerTipUpsellConfiguration *__return_ptr retstr, Swift::Double interval, Swift::Bool nativeRulesEnabled, Swift::String placementIdentifier, Swift::Double minimumRatioComplete, Swift::Bool subscriptionCheckEnabled)
{
  retstr->interval = interval;
  retstr->nativeRulesEnabled = nativeRulesEnabled;
  retstr->placementIdentifier = placementIdentifier;
  retstr->minimumRatioComplete = minimumRatioComplete;
  retstr->subscriptionCheckEnabled = subscriptionCheckEnabled;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B7B0034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B7B007C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessTrainerTips::TrainerTipPlayerDismissedEvent __swiftcall TrainerTipPlayerDismissedEvent.init(elapsedTime:duration:isUpsellEnabled:)(Swift::Double elapsedTime, Swift::Double duration, Swift::Bool isUpsellEnabled)
{
  *v3 = elapsedTime;
  *(v3 + 8) = duration;
  *(v3 + 16) = isUpsellEnabled;
  result.duration = duration;
  result.elapsedTime = elapsedTime;
  result.isUpsellEnabled = isUpsellEnabled;
  return result;
}

uint64_t sub_24B7B00FC()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x6C6C657370557369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5464657370616C65;
  }
}

uint64_t sub_24B7B016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B7B07D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B7B0194(uint64_t a1)
{
  v2 = sub_24B7B03BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7B01D0(uint64_t a1)
{
  v2 = sub_24B7B03BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrainerTipPlayerDismissedEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058070, "&\t");
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = *(v1 + 16);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B03BC();
  sub_24B7B55DC();
  v17 = 0;
  sub_24B7B552C();
  if (!v2)
  {
    v16 = 1;
    sub_24B7B552C();
    v15 = 2;
    sub_24B7B551C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B7B03BC()
{
  result = qword_27F058078;
  if (!qword_27F058078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058078);
  }

  return result;
}

uint64_t TrainerTipPlayerDismissedEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F058080, &qword_24B7B61E8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B03BC();
  sub_24B7B55CC();
  if (!v2)
  {
    v20 = 0;
    sub_24B7B54DC();
    v12 = v11;
    v19 = 1;
    sub_24B7B54DC();
    v15 = v14;
    v18 = 2;
    v16 = sub_24B7B54CC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for TrainerTipPlayerDismissedEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainerTipPlayerDismissedEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B7B06CC()
{
  result = qword_27F058088;
  if (!qword_27F058088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058088);
  }

  return result;
}

unint64_t sub_24B7B0724()
{
  result = qword_27F058090;
  if (!qword_27F058090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058090);
  }

  return result;
}

unint64_t sub_24B7B077C()
{
  result = qword_27F058098;
  if (!qword_27F058098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F058098);
  }

  return result;
}

uint64_t sub_24B7B07D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5464657370616C65 && a2 == 0xEB00000000656D69;
  if (v4 || (sub_24B7B554C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B7B554C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C657370557369 && a2 == 0xEF64656C62616E45)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B7B554C();

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

uint64_t sub_24B7B08F4()
{
  v0 = sub_24B7B53CC();
  __swift_allocate_value_buffer(v0, qword_27F059488);
  __swift_project_value_buffer(v0, qword_27F059488);
  return sub_24B7B53BC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t TrainerTipUpsellMonitorFeature.environment.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_24B7B0A70(v11, &v10);
}

__n128 TrainerTipUpsellMonitorFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t TrainerTipUpsellMonitorFeature.reduce(localState:sharedState:sideEffects:action:)(_BYTE *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A0, &qword_24B7B63B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v75[-v15];
  result = MEMORY[0x28223BE20](v14);
  v19 = &v75[-v18];
  v20 = *a4;
  v21 = a4[1];
  v22 = *(a4 + 16);
  v23 = v4[5];
  v80 = v4[4];
  v81 = v23;
  v24 = v4[7];
  v82 = v4[6];
  v83 = v24;
  v25 = v4[1];
  v76 = *v4;
  v77 = v25;
  v26 = v4[3];
  v78 = v4[2];
  v79 = v26;
  if (v22 == 2)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A8, &qword_24B7B63B8);
    v46 = v45[12];
    v47 = v45[16];
    v48 = v45[20];
    v49 = &v13[v45[24]];
    v75[0] = 1;
    sub_24B7B11E4();
    sub_24B7B547C();
    sub_24B7B544C();
    v50 = *MEMORY[0x277D04400];
    v51 = sub_24B7B53FC();
    (*(*(v51 - 8) + 104))(&v13[v47], v50, v51);
    v52 = *MEMORY[0x277D043E8];
    v53 = sub_24B7B53EC();
    (*(*(v53 - 8) + 104))(&v13[v48], v52, v53);
    v54 = swift_allocObject();
    v55 = v81;
    v54[5] = v80;
    v54[6] = v55;
    v56 = v83;
    v54[7] = v82;
    v54[8] = v56;
    v57 = v77;
    v54[1] = v76;
    v54[2] = v57;
    v58 = v79;
    v54[3] = v78;
    v54[4] = v58;
    *v49 = &unk_24B7B63C8;
    v49[1] = v54;
    (*(v9 + 104))(v13, *MEMORY[0x277D043B0], v8);
    v41 = *a3;
    sub_24B7B3BAC(&v76, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24B7B4070(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v59 = v41[3];
    v44 = v43 + 1;
    if (v43 >= v59 >> 1)
    {
      v41 = sub_24B7B4070(v59 > 1, v43 + 1, 1, v41);
    }

    v19 = v13;
  }

  else if (v22 == 3)
  {
    if (*a1)
    {
      return result;
    }

    *a1 = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A8, &qword_24B7B63B8);
    v28 = v27[12];
    v29 = v27[16];
    v30 = v27[20];
    v31 = &v19[v27[24]];
    v75[0] = 0;
    sub_24B7B11E4();
    sub_24B7B547C();
    sub_24B7B544C();
    v32 = *MEMORY[0x277D04400];
    v33 = sub_24B7B53FC();
    (*(*(v33 - 8) + 104))(&v19[v29], v32, v33);
    v34 = *MEMORY[0x277D043E0];
    v35 = sub_24B7B53EC();
    (*(*(v35 - 8) + 104))(&v19[v30], v34, v35);
    v36 = swift_allocObject();
    v37 = v81;
    v36[5] = v80;
    v36[6] = v37;
    v38 = v83;
    v36[7] = v82;
    v36[8] = v38;
    v39 = v77;
    v36[1] = v76;
    v36[2] = v39;
    v40 = v79;
    v36[3] = v78;
    v36[4] = v40;
    *v31 = &unk_24B7B63E8;
    v31[1] = v36;
    (*(v9 + 104))(v19, *MEMORY[0x277D043B0], v8);
    v41 = *a3;
    sub_24B7B3BAC(&v76, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24B7B4070(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v42 = v41[3];
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v41 = sub_24B7B4070(v42 > 1, v43 + 1, 1, v41);
    }
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A8, &qword_24B7B63B8);
    v61 = v60[12];
    v62 = v60[16];
    v63 = v60[20];
    v64 = &v16[v60[24]];
    v75[0] = 2;
    sub_24B7B11E4();
    sub_24B7B547C();
    sub_24B7B544C();
    v65 = *MEMORY[0x277D04400];
    v66 = sub_24B7B53FC();
    (*(*(v66 - 8) + 104))(&v16[v62], v65, v66);
    v67 = *MEMORY[0x277D043E8];
    v68 = sub_24B7B53EC();
    (*(*(v68 - 8) + 104))(&v16[v63], v67, v68);
    v69 = swift_allocObject();
    v70 = v81;
    *(v69 + 80) = v80;
    *(v69 + 96) = v70;
    v71 = v83;
    *(v69 + 112) = v82;
    *(v69 + 128) = v71;
    v72 = v77;
    *(v69 + 16) = v76;
    *(v69 + 32) = v72;
    v73 = v79;
    *(v69 + 48) = v78;
    *(v69 + 64) = v73;
    *(v69 + 144) = v20;
    *(v69 + 152) = v21;
    *(v69 + 160) = v22 & 1;
    *v64 = &unk_24B7B63D8;
    v64[1] = v69;
    (*(v9 + 104))(v16, *MEMORY[0x277D043B0], v8);
    v41 = *a3;
    sub_24B7B3BAC(&v76, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24B7B4070(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v74 = v41[3];
    v44 = v43 + 1;
    if (v43 >= v74 >> 1)
    {
      v41 = sub_24B7B4070(v74 > 1, v43 + 1, 1, v41);
    }

    v19 = v16;
  }

  v41[2] = v44;
  result = (*(v9 + 32))(v41 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v43, v19, v8);
  *a3 = v41;
  return result;
}

unint64_t sub_24B7B11E4()
{
  result = qword_28110AA48;
  if (!qword_28110AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA48);
  }

  return result;
}

uint64_t sub_24B7B1238(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = sub_24B7B543C();
  v2[20] = sub_24B7B542C();
  v4 = *(a2 + 88);
  v8 = (*(a2 + 80) + **(a2 + 80));
  v5 = *(*(a2 + 80) + 4);
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_24B7B134C;

  return v8(v2 + 7);
}

uint64_t sub_24B7B134C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v11 = *v1;
  v3[22] = v2;

  v8 = sub_24B7B540C();
  v3[23] = v8;
  v3[24] = v7;
  if (v2)
  {
    v9 = sub_24B7B1AB8;
  }

  else
  {
    v9 = sub_24B7B14AC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B7B14AC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B7B545C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[19];
  v7 = sub_24B7B542C();
  v0[25] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_24B7B1684;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v7, v11);
}

uint64_t sub_24B7B1684()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[25];

    v6 = v2[23];
    v7 = v2[24];

    return MEMORY[0x2822009F8](sub_24B7B1798, v6, v7);
  }

  return result;
}

uint64_t sub_24B7B1798()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    v2 = *(v0 + 160);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 120) = *(v0 + 96);
    *(v0 + 136) = v1 & 1;
    v5 = *(MEMORY[0x277D043C8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B0, &qword_24B7B6558);
    *v6 = v0;
    v6[1] = sub_24B7B18BC;
    v8 = *(v0 + 144);

    return MEMORY[0x282159B08](v0 + 120, v7);
  }
}

uint64_t sub_24B7B18BC()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_24B7B19DC, v4, v3);
}

uint64_t sub_24B7B19DC()
{
  v1 = v0[19];
  v2 = sub_24B7B542C();
  v0[25] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_24B7B1684;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 12, v2, v6);
}

uint64_t sub_24B7B1AB8()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_24B7B1B1C(uint64_t a1, _OWORD *a2, char a3, double a4, double a5)
{
  *(v5 + 192) = a1;
  *(v5 + 200) = sub_24B7B543C();
  *(v5 + 208) = sub_24B7B542C();
  v10 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v10;
  v11 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v11;
  v12 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v12;
  v13 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v13;
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  *(v5 + 160) = a3;
  v14 = swift_task_alloc();
  *(v5 + 216) = v14;
  *v14 = v5;
  v14[1] = sub_24B7B1C1C;

  return sub_24B7B208C((v5 + 144));
}

uint64_t sub_24B7B1C1C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = *(v4 + 200);
    v8 = *(v4 + 208);
    v9 = sub_24B7B540C();
    v11 = v10;
    v12 = sub_24B7B2028;
    v13 = v9;
    v14 = v11;
  }

  else
  {
    v15 = *(v4 + 200);
    v16 = *(v4 + 208);
    *(v4 + 161) = a1 & 1;
    v17 = sub_24B7B540C();
    v14 = v18;
    *(v4 + 232) = v17;
    *(v4 + 240) = v18;
    v12 = sub_24B7B1D88;
    v13 = v17;
  }

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_24B7B1D88()
{
  if (*(v0 + 161) == 1)
  {
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 2;
    v1 = *(MEMORY[0x277D043C8] + 4);
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B0, &qword_24B7B6558);
    *v2 = v0;
    v2[1] = sub_24B7B1EA4;
    v4 = *(v0 + 192);

    return MEMORY[0x282159B08](v0 + 168, v3);
  }

  else
  {
    v5 = *(v0 + 208);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24B7B1EA4()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_24B7B1FC4, v4, v3);
}

uint64_t sub_24B7B1FC4()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B7B2028()
{
  v1 = v0[26];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_24B7B208C(__int128 *a1)
{
  *(v2 + 288) = v1;
  v3 = *a1;
  *(v2 + 233) = *(a1 + 16);
  v4 = *v1;
  *(v2 + 296) = v3;
  *(v2 + 312) = v4;
  v5 = *(v1 + 4);
  *(v2 + 328) = v5;
  v6 = *(v1 + 56);
  *(v2 + 336) = *(v1 + 40);
  *(v2 + 352) = v6;
  *(v2 + 368) = *(v1 + 9);
  v7 = v1[5];
  v8 = v1[7];
  *(v2 + 160) = v1[6];
  *(v2 + 176) = v8;
  *(v2 + 144) = v7;
  v12 = (v5 + *v5);
  v9 = v5[1];
  v10 = swift_task_alloc();
  *(v2 + 376) = v10;
  *v10 = v2;
  v10[1] = sub_24B7B21C4;

  return v12();
}

uint64_t sub_24B7B21C4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 234) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24B7B2318, 0, 0);
  }
}

uint64_t sub_24B7B2318()
{
  if (*(v0 + 234) != 1)
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v5 = sub_24B7B53CC();
    __swift_project_value_buffer(v5, qword_27F059488);
    v6 = sub_24B7B53AC();
    v7 = sub_24B7B546C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[TrainerTipUpsellMonitorFeature] Platform does not support tips upsell, skipping upsell";
    goto LABEL_14;
  }

  if (*(v0 + 233) == 1)
  {
    v12 = (*(v0 + 312) + **(v0 + 312));
    v1 = *(*(v0 + 312) + 4);
    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v2[1] = sub_24B7B25A4;
    v3 = *(v0 + 320);

    return v12();
  }

  if (qword_27F057F40 != -1)
  {
    swift_once();
  }

  v10 = sub_24B7B53CC();
  __swift_project_value_buffer(v10, qword_27F059488);
  v6 = sub_24B7B53AC();
  v7 = sub_24B7B546C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[TrainerTipUpsellMonitorFeature] Options do not contain upsell, skipping upsell";
LABEL_14:
    _os_log_impl(&dword_24B7AC000, v6, v7, v9, v8, 2u);
    MEMORY[0x24C24A230](v8, -1, -1);
  }

LABEL_15:

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_24B7B25A4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 235) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24B7B26F8, 0, 0);
  }
}

uint64_t sub_24B7B26F8()
{
  if (*(v0 + 235))
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v1 = sub_24B7B53CC();
    __swift_project_value_buffer(v1, qword_27F059488);
    v2 = sub_24B7B53AC();
    v3 = sub_24B7B546C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24B7AC000, v2, v3, "[TrainerTipUpsellMonitorFeature] forcing tips upsell with user default, requesting upsell", v4, 2u);
      MEMORY[0x24C24A230](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {
    v10 = (*(v0 + 360) + **(v0 + 360));
    v7 = *(*(v0 + 360) + 4);
    v8 = swift_task_alloc();
    *(v0 + 392) = v8;
    *v8 = v0;
    v8[1] = sub_24B7B28EC;
    v9 = *(v0 + 368);

    return v10(v0 + 192);
  }
}

uint64_t sub_24B7B28EC()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_24B7B3454;
  }

  else
  {
    v3 = sub_24B7B2A00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B7B2A00()
{
  v1 = *(v0 + 192);
  *(v0 + 408) = v1;
  v2 = *(v0 + 200);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 416) = v4;
  *(v0 + 424) = v3;
  v5 = *(v0 + 224);
  *(v0 + 432) = v5;
  v6 = *(v0 + 232);
  *(v0 + 236) = v6;
  if (v2 == 1)
  {
    if (v6)
    {
      v22 = (*(v0 + 344) + **(v0 + 344));
      v7 = *(*(v0 + 344) + 4);
      v8 = swift_task_alloc();
      *(v0 + 440) = v8;
      *v8 = v0;
      v8[1] = sub_24B7B2CD4;
      v9 = *(v0 + 352);

      return v22();
    }

    else
    {
      v16 = *(v0 + 288);
      v17 = *(v0 + 328);
      *(v0 + 16) = *(v0 + 312);
      v18 = *(v0 + 344);
      v19 = *(v0 + 360);
      *(v0 + 32) = *(v16 + 16);
      *(v0 + 48) = v17;
      *(v0 + 64) = v18;
      *(v0 + 80) = v19;
      v20 = *(v0 + 160);
      *(v0 + 96) = *(v0 + 144);
      *(v0 + 112) = v20;
      *(v0 + 128) = *(v0 + 176);
      *(v0 + 240) = v1;
      *(v0 + 248) = 1;
      *(v0 + 256) = v4;
      *(v0 + 264) = v3;
      *(v0 + 272) = v5;
      *(v0 + 280) = 0;
      v21 = swift_task_alloc();
      *(v0 + 456) = v21;
      *v21 = v0;
      v21[1] = sub_24B7B3060;

      return sub_24B7B3BEC((v0 + 240));
    }
  }

  else
  {

    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v11 = sub_24B7B53CC();
    __swift_project_value_buffer(v11, qword_27F059488);
    v12 = sub_24B7B53AC();
    v13 = sub_24B7B546C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24B7AC000, v12, v13, "[TrainerTipUpsellMonitorFeature] native rules not enabled, requesting upsell", v14, 2u);
      MEMORY[0x24C24A230](v14, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15(1);
  }
}

uint64_t sub_24B7B2CD4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = sub_24B7B2FF8;
  }

  else
  {
    *(v4 + 237) = a1;
    v7 = sub_24B7B2DFC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24B7B2DFC()
{
  if (*(v0 + 237) == 1)
  {
    v1 = *(v0 + 424);

    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v2 = sub_24B7B53CC();
    __swift_project_value_buffer(v2, qword_27F059488);
    v3 = sub_24B7B53AC();
    v4 = sub_24B7B546C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24B7AC000, v3, v4, "[TrainerTipUpsellMonitorFeature] subscription status not allowed, not requesting upsell", v5, 2u);
      MEMORY[0x24C24A230](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v0 + 236);
    v9 = *(v0 + 432);
    v11 = *(v0 + 416);
    v10 = *(v0 + 424);
    v12 = *(v0 + 408);
    v13 = *(v0 + 288);
    v14 = *(v0 + 328);
    *(v0 + 16) = *(v0 + 312);
    v15 = *(v0 + 344);
    v16 = *(v0 + 360);
    *(v0 + 32) = *(v13 + 16);
    *(v0 + 48) = v14;
    *(v0 + 64) = v15;
    *(v0 + 80) = v16;
    v17 = *(v0 + 160);
    *(v0 + 96) = *(v0 + 144);
    *(v0 + 112) = v17;
    *(v0 + 128) = *(v0 + 176);
    *(v0 + 240) = v12;
    *(v0 + 248) = 1;
    *(v0 + 256) = v11;
    *(v0 + 264) = v10;
    *(v0 + 272) = v9;
    *(v0 + 280) = v8;
    v18 = swift_task_alloc();
    *(v0 + 456) = v18;
    *v18 = v0;
    v18[1] = sub_24B7B3060;

    return sub_24B7B3BEC((v0 + 240));
  }
}

uint64_t sub_24B7B2FF8()
{
  v1 = v0[53];

  v2 = v0[56];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_24B7B3060(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = sub_24B7B3470;
  }

  else
  {
    *(v4 + 238) = a1 & 1;
    v7 = sub_24B7B318C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24B7B318C()
{
  v1 = *(v0 + 238);
  v2 = *(v0 + 424);

  if (v1 != 1)
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v9 = sub_24B7B53CC();
    __swift_project_value_buffer(v9, qword_27F059488);
    v5 = sub_24B7B53AC();
    v10 = sub_24B7B546C();
    if (os_log_type_enabled(v5, v10))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v11 = "[TrainerTipUpsellMonitorFeature] interval not expired, not requesting upsell";
      v12 = v10;
      v13 = v5;
      v14 = v7;
      v15 = 2;
LABEL_16:
      _os_log_impl(&dword_24B7AC000, v13, v12, v11, v14, v15);
      v8 = 0;
      goto LABEL_17;
    }

LABEL_18:
    v8 = 0;
    goto LABEL_20;
  }

  v3 = *(v0 + 304);
  if (v3 <= 0.0 || *(v0 + 432) > *(v0 + 296) / v3)
  {
    if (qword_27F057F40 != -1)
    {
      swift_once();
    }

    v16 = sub_24B7B53CC();
    __swift_project_value_buffer(v16, qword_27F059488);
    v5 = sub_24B7B53AC();
    v17 = sub_24B7B546C();
    if (os_log_type_enabled(v5, v17))
    {
      v19 = *(v0 + 296);
      v18 = *(v0 + 304);
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = v19;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v18;
      v11 = "[TrainerTipUpsellMonitorFeature] minimum ratio complete not reached, not requesting upsell - elapsedTime = %f, duration = %f";
      v12 = v17;
      v13 = v5;
      v14 = v7;
      v15 = 22;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (qword_27F057F40 != -1)
  {
    swift_once();
  }

  v4 = sub_24B7B53CC();
  __swift_project_value_buffer(v4, qword_27F059488);
  v5 = sub_24B7B53AC();
  v6 = sub_24B7B546C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24B7AC000, v5, v6, "[TrainerTipUpsellMonitorFeature] all checks passed, requesting upsell", v7, 2u);
    v8 = 1;
LABEL_17:
    MEMORY[0x24C24A230](v7, -1, -1);
    goto LABEL_20;
  }

  v8 = 1;
LABEL_20:

  v20 = *(v0 + 8);

  return v20(v8);
}

uint64_t sub_24B7B3470()
{
  v1 = v0[53];

  v2 = v0[58];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_24B7B34D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B7B539C();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = sub_24B7B543C();
  *(v2 + 48) = sub_24B7B542C();
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  *(v2 + 56) = *(a2 + 112);
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 72) = v10;
  *v10 = v2;
  v10[1] = sub_24B7B3644;

  return v12();
}

uint64_t sub_24B7B3644()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[10] = v2;

  v8 = sub_24B7B540C();
  v3[11] = v8;
  v3[12] = v7;
  if (v2)
  {
    v9 = sub_24B7B3AA4;
  }

  else
  {
    v9 = sub_24B7B37A4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B7B37A4()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_24B7B538C();
  v8 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_24B7B38A0;
  v5 = v0[8];
  v6 = v0[4];

  return v8(v6);
}

uint64_t sub_24B7B38A0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;

  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];
  if (v0)
  {
    MEMORY[0x24C24A180](v0);
    (*(v7 + 8))(v6, v8);
    v9 = v3[11];
    v10 = v3[12];
    v11 = sub_24B7B4880;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[11];
    v10 = v3[12];
    v11 = sub_24B7B3A34;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_24B7B3A34()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B7B3AA4()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_24B7B3B14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B7B4884;

  return sub_24B7B34D8(a1, v1 + 16);
}

uint64_t sub_24B7B3BEC(void *a1)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B8, &qword_24B7B6570) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[2] = v5;
  v6 = sub_24B7B539C();
  v2[3] = v6;
  v7 = *(v6 - 8);
  v2[4] = v7;
  v8 = *(v7 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = *a1;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v14 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  v2[8] = v12;
  *v12 = v2;
  v12[1] = sub_24B7B3D98;

  return v14(v5);
}

uint64_t sub_24B7B3D98()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24B7B3FF4;
  }

  else
  {
    v3 = sub_24B7B3EAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24B7B3EAC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B7B4814(v3);
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    (*(v2 + 32))(v6, v3, v1);
    sub_24B7B538C();
    sub_24B7B537C();
    v9 = v8;
    v10 = *(v2 + 8);
    v10(v7, v1);
    v10(v6, v1);
    v4 = v5 < v9;
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 16);

  v14 = *(v0 + 8);

  return v14(v4);
}

uint64_t sub_24B7B3FF4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[9];

  return v4(0);
}

size_t sub_24B7B4070(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580C0, &qword_24B7B6578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A0, &qword_24B7B63B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580A0, &qword_24B7B63B0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24B7B4260(uint64_t a1)
{
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B7B431C;

  return sub_24B7B1B1C(a1, (v1 + 16), v6, v4, v5);
}

uint64_t sub_24B7B431C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  v6 = v1[9];

  v7 = v1[11];

  v8 = v1[13];

  v9 = v1[15];

  v10 = v1[17];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24B7B448C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B7B4884;

  return sub_24B7B1238(a1, v1 + 16);
}

unint64_t sub_24B7B4528()
{
  result = qword_28110AA50;
  if (!qword_28110AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA50);
  }

  return result;
}

unint64_t sub_24B7B4580()
{
  result = qword_28110AA58;
  if (!qword_28110AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA58);
  }

  return result;
}

unint64_t sub_24B7B45D8()
{
  result = qword_28110AA38;
  if (!qword_28110AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA38);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_24B7B4650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24B7B4698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B7B470C()
{
  result = qword_28110AA40;
  if (!qword_28110AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110AA40);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24B7B4814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580B8, &qword_24B7B6570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrainerTipUpsellMonitorError.hashValue.getter()
{
  v1 = *v0;
  sub_24B7B559C();
  MEMORY[0x24C24A040](v1);
  return sub_24B7B55BC();
}

unint64_t sub_24B7B4914()
{
  result = qword_27F0580C8;
  if (!qword_27F0580C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580C8);
  }

  return result;
}

uint64_t sub_24B7B49E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6176697463417369 && a2 == 0xEB00000000646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B7B554C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B7B4A6C(uint64_t a1)
{
  v2 = sub_24B7B4C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7B4AA8(uint64_t a1)
{
  v2 = sub_24B7B4C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrainerTipUpsellMonitorLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580D0, &qword_24B7B6670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B4C1C();
  sub_24B7B55DC();
  sub_24B7B551C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B7B4C1C()
{
  result = qword_27F0580D8;
  if (!qword_27F0580D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580D8);
  }

  return result;
}

uint64_t TrainerTipUpsellMonitorLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580E0, &qword_24B7B6678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B4C1C();
  sub_24B7B55CC();
  if (!v2)
  {
    v11 = sub_24B7B54CC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B7B4DE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0580D0, &qword_24B7B6670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7B4C1C();
  sub_24B7B55DC();
  sub_24B7B551C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for TrainerTipUpsellMonitorLocalState(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrainerTipUpsellMonitorLocalState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7B50BC()
{
  result = qword_27F0580E8;
  if (!qword_27F0580E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580E8);
  }

  return result;
}

unint64_t sub_24B7B5114()
{
  result = qword_27F0580F0;
  if (!qword_27F0580F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580F0);
  }

  return result;
}

unint64_t sub_24B7B516C()
{
  result = qword_27F0580F8;
  if (!qword_27F0580F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0580F8);
  }

  return result;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchForceTrainerTipUpsellEnabled.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchLastTrainerTipUpsellViewedDate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchPlatformSupportsTrainerTipUpsell.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchSubscriptionStatus.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.fetchTrainerTipUpsellConfiguration.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.makeTrainerTipPlayerDismissedStream.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.presentTrainerTipUpsell.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t TrainerTipUpsellMonitorEnvironment.updateLastTrainerTipUpsellViewedDate.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

__n128 TrainerTipUpsellMonitorEnvironment.init(fetchForceTrainerTipUpsellEnabled:fetchLastTrainerTipUpsellViewedDate:fetchPlatformSupportsTrainerTipUpsell:fetchSubscriptionStatus:fetchTrainerTipUpsellConfiguration:makeTrainerTipPlayerDismissedStream:presentTrainerTipUpsell:updateLastTrainerTipUpsellViewedDate:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}