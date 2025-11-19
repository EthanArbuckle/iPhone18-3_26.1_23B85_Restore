uint64_t sub_24B782614@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B782738()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B782770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24B78F098();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24B7827B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B7901A8();
  *a1 = result;
  return result;
}

uint64_t sub_24B782804@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B7901E8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B782838(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B7901F8();
}

uint64_t sub_24B782868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B7901C8();
  *a1 = result;
  return result;
}

uint64_t sub_24B782894(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B7901D8();
}

uint64_t sub_24B7828C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B790148();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B78292C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B790148();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B7829CC(uint64_t a1)
{
  v2 = sub_24B783108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B782A08(uint64_t a1)
{
  v2 = sub_24B783108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B782A44()
{
  if (*v0)
  {
    result = 0x4F656C6449707061;
  }

  else
  {
    result = 0x6570704177656976;
  }

  *v0;
  return result;
}

uint64_t sub_24B782A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_24B790528() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4F656C6449707061 && a2 == 0xEE00646572756363)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B790528();

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

uint64_t sub_24B782B88(uint64_t a1)
{
  v2 = sub_24B7830B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B782BC4(uint64_t a1)
{
  v2 = sub_24B7830B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B782C00(uint64_t a1)
{
  v2 = sub_24B78315C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B782C3C(uint64_t a1)
{
  v2 = sub_24B78315C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteBrowsingIdleMonitorAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1);
  return sub_24B790568();
}

uint64_t sub_24B782CEC()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1);
  return sub_24B790568();
}

uint64_t sub_24B782D34()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1);
  return sub_24B790568();
}

uint64_t RemoteBrowsingIdleMonitorAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B48, &qword_24B790910);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B50, &qword_24B790918);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B58, &qword_24B790920);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7830B4();
  sub_24B790588();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24B783108();
    v18 = v22;
    sub_24B7904C8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24B78315C();
    sub_24B7904C8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
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

unint64_t sub_24B7830B4()
{
  result = qword_27F050B60;
  if (!qword_27F050B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050B60);
  }

  return result;
}

unint64_t sub_24B783108()
{
  result = qword_27F050B68;
  if (!qword_27F050B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050B68);
  }

  return result;
}

unint64_t sub_24B78315C()
{
  result = qword_27F050B70;
  if (!qword_27F050B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050B70);
  }

  return result;
}

uint64_t RemoteBrowsingIdleMonitorAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B78, &qword_24B790928);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B80, &qword_24B790930);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B88, &qword_24B790938);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B7830B4();
  v17 = v37;
  sub_24B790578();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_24B7904B8();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_24B790428();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B90, &qword_24B790940) + 48);
    *v25 = &type metadata for RemoteBrowsingIdleMonitorAction;
    sub_24B790458();
    sub_24B790418();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_24B783108();
    sub_24B790448();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_24B78315C();
    sub_24B790448();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
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

unint64_t sub_24B783654()
{
  result = qword_27F050B98;
  if (!qword_27F050B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050B98);
  }

  return result;
}

uint64_t sub_24B7836A8()
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

uint64_t sub_24B7836DC()
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

uint64_t sub_24B783710()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t getEnumTagSinglePayload for SubscriptionHandoffFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SubscriptionHandoffFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B783900()
{
  result = qword_27F050BA0;
  if (!qword_27F050BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BA0);
  }

  return result;
}

unint64_t sub_24B783958()
{
  result = qword_27F050BA8;
  if (!qword_27F050BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BA8);
  }

  return result;
}

unint64_t sub_24B7839B0()
{
  result = qword_27F050BB0;
  if (!qword_27F050BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BB0);
  }

  return result;
}

unint64_t sub_24B783A08()
{
  result = qword_27F050BB8;
  if (!qword_27F050BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BB8);
  }

  return result;
}

unint64_t sub_24B783A60()
{
  result = qword_27F050BC0;
  if (!qword_27F050BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BC0);
  }

  return result;
}

unint64_t sub_24B783AB8()
{
  result = qword_27F050BC8;
  if (!qword_27F050BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BC8);
  }

  return result;
}

unint64_t sub_24B783B10()
{
  result = qword_27F050BD0;
  if (!qword_27F050BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BD0);
  }

  return result;
}

uint64_t sub_24B783B9C(uint64_t a1)
{
  v2 = sub_24B7842A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B783BD8(uint64_t a1)
{
  v2 = sub_24B7842A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B783C14()
{
  v1 = 0xD000000000000031;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_24B783C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B784DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B783CB8(uint64_t a1)
{
  v2 = sub_24B784200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B783CF4(uint64_t a1)
{
  v2 = sub_24B784200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B783D30(uint64_t a1)
{
  v2 = sub_24B784254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B783D6C(uint64_t a1)
{
  v2 = sub_24B784254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B783DA8(uint64_t a1)
{
  v2 = sub_24B7842FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B783DE4(uint64_t a1)
{
  v2 = sub_24B7842FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionHandoffAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1);
  return sub_24B790568();
}

uint64_t SubscriptionHandoffAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050BD8, &qword_24B790D00);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050BE0, &qword_24B790D08);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050BE8, &qword_24B790D10);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050BF0, &qword_24B790D18);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B784200();
  sub_24B790588();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_24B7842A8();
      v12 = v26;
      sub_24B7904C8();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_24B784254();
      v12 = v29;
      sub_24B7904C8();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_24B7842FC();
    sub_24B7904C8();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_24B784200()
{
  result = qword_27F050BF8;
  if (!qword_27F050BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050BF8);
  }

  return result;
}

unint64_t sub_24B784254()
{
  result = qword_27F050C00;
  if (!qword_27F050C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C00);
  }

  return result;
}

unint64_t sub_24B7842A8()
{
  result = qword_27F050C08;
  if (!qword_27F050C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C08);
  }

  return result;
}

unint64_t sub_24B7842FC()
{
  result = qword_27F050C10;
  if (!qword_27F050C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C10);
  }

  return result;
}

uint64_t SubscriptionHandoffAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C18, &qword_24B790D20);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C20, &qword_24B790D28);
  v37 = *(v40 - 8);
  v6 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C28, &qword_24B790D30);
  v36 = *(v9 - 8);
  v10 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C30, &unk_24B790D38);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B784200();
  v20 = v43;
  sub_24B790578();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_24B7904B8();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_24B7836A8();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_24B790428();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B90, &qword_24B790940) + 48);
      *v30 = &type metadata for SubscriptionHandoffAction;
      sub_24B790458();
      sub_24B790418();
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
          sub_24B7842A8();
          sub_24B790448();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_24B784254();
          v33 = v22;
          sub_24B790448();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_24B7842FC();
        sub_24B790448();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_24B7848C4()
{
  result = qword_27F050C38;
  if (!qword_27F050C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C38);
  }

  return result;
}

uint64_t sub_24B784958(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24B7849E8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B784ADC()
{
  result = qword_27F050C40;
  if (!qword_27F050C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C40);
  }

  return result;
}

unint64_t sub_24B784B34()
{
  result = qword_27F050C48;
  if (!qword_27F050C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C48);
  }

  return result;
}

unint64_t sub_24B784B8C()
{
  result = qword_27F050C50;
  if (!qword_27F050C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C50);
  }

  return result;
}

unint64_t sub_24B784BE4()
{
  result = qword_27F050C58;
  if (!qword_27F050C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C58);
  }

  return result;
}

unint64_t sub_24B784C3C()
{
  result = qword_27F050C60;
  if (!qword_27F050C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C60);
  }

  return result;
}

unint64_t sub_24B784C94()
{
  result = qword_27F050C68;
  if (!qword_27F050C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C68);
  }

  return result;
}

unint64_t sub_24B784CEC()
{
  result = qword_27F050C70;
  if (!qword_27F050C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C70);
  }

  return result;
}

unint64_t sub_24B784D44()
{
  result = qword_27F050C78;
  if (!qword_27F050C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C78);
  }

  return result;
}

unint64_t sub_24B784D9C()
{
  result = qword_27F050C80;
  if (!qword_27F050C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C80);
  }

  return result;
}

uint64_t sub_24B784DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_24B790528() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000031 && 0x800000024B7937D0 == a2 || (sub_24B790528() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002FLL && 0x800000024B793810 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B790528();

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

__n128 SubscriptionHandoffFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t SubscriptionHandoffFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, char **a3, _BYTE *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C88, &qword_24B7911E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v74 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v21 = *a4;
  if (*a4)
  {
    v83 = v7;
    v84 = a3;
    v23 = *v4;
    v22 = v4[1];
    v25 = v4[2];
    v24 = v4[3];
    if (v21 == 1)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CA0, &qword_24B791200);
      v80 = v26[20];
      v27 = v22;
      v28 = v26[24];
      v29 = v26[28];
      v30 = &v18[v26[32]];
      v85 = 0;
      sub_24B7857A0();
      sub_24B7903F8();
      *(v18 + 5) = 0x4014000000000000;
      v18[48] = 1;
      v31 = v24;
      v32 = *MEMORY[0x277D043F0];
      v33 = sub_24B7902D8();
      (*(*(v33 - 8) + 104))(&v18[v28], v32, v33);
      v34 = *MEMORY[0x277D043E0];
      v35 = sub_24B7902C8();
      (*(*(v35 - 8) + 104))(&v18[v29], v34, v35);
      v36 = swift_allocObject();
      v36[2] = v23;
      v36[3] = v27;
      v36[4] = v25;
      v36[5] = v31;
      *v30 = &unk_24B791210;
      *(v30 + 1) = v36;

      sub_24B7903C8();
      v37 = v83;
      (*(v8 + 104))(v18, *MEMORY[0x277D043B8], v83);
      a3 = v84;
      v38 = *v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_24B7868E0(0, *(v38 + 2) + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_24B7868E0(v39 > 1, v40 + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
      }

      *(v38 + 2) = v40 + 1;
      result = (*(v8 + 32))(&v38[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40], v18, v37);
    }

    else
    {
      v79 = v23;
      v80 = v25;
      v87 = 0;
      sub_24B7857A0();
      sub_24B7903F8();
      v53 = *MEMORY[0x277D043C0];
      v54 = v83;
      v78 = *(v8 + 104);
      v78(v15, v53, v83);
      v38 = *v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v22;
      v82 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_24B7868E0(0, *(v38 + 2) + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
      }

      v57 = *(v38 + 2);
      v56 = *(v38 + 3);
      if (v57 >= v56 >> 1)
      {
        v38 = sub_24B7868E0(v56 > 1, v57 + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
      }

      *(v38 + 2) = v57 + 1;
      v59 = *(v8 + 32);
      v58 = v8 + 32;
      v76 = (*(v58 + 48) + 32) & ~*(v58 + 48);
      v77 = v59;
      v75 = *(v58 + 40);
      v59(&v38[v76 + v75 * v57], v15, v54);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C98, &qword_24B7911E8);
      v74 = v60[12];
      v61 = v60[16];
      v62 = v60[20];
      v63 = &v12[v60[24]];
      v86 = 1;
      sub_24B7903F8();
      v64 = *MEMORY[0x277D043F0];
      v65 = sub_24B7902D8();
      (*(*(v65 - 8) + 104))(&v12[v61], v64, v65);
      v66 = *MEMORY[0x277D043E8];
      v67 = sub_24B7902C8();
      (*(*(v67 - 8) + 104))(&v12[v62], v66, v67);
      v68 = swift_allocObject();
      v69 = v80;
      v70 = v81;
      v71 = v82;
      v68[2] = v79;
      v68[3] = v70;
      v68[4] = v69;
      v68[5] = v71;
      *v63 = &unk_24B7911F8;
      *(v63 + 1) = v68;

      sub_24B7903C8();
      v78(v12, *MEMORY[0x277D043B0], v54);
      v73 = *(v38 + 2);
      v72 = *(v38 + 3);
      if (v73 >= v72 >> 1)
      {
        v38 = sub_24B7868E0(v72 > 1, v73 + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
      }

      a3 = v84;
      *(v38 + 2) = v73 + 1;
      result = v77(&v38[v76 + v73 * v75], v12, v54);
    }
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C98, &qword_24B7911E8);
    v43 = v42[12];
    v44 = v42[16];
    v45 = v42[20];
    v46 = &v20[v42[24]];
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 4) = 0;
    *v46 = &unk_24B791218;
    *(v46 + 1) = 0;
    sub_24B7903C8();
    v47 = *MEMORY[0x277D043F8];
    v48 = sub_24B7902D8();
    (*(*(v48 - 8) + 104))(&v20[v44], v47, v48);
    v49 = *MEMORY[0x277D043E8];
    v50 = sub_24B7902C8();
    (*(*(v50 - 8) + 104))(&v20[v45], v49, v50);
    (*(v8 + 104))(v20, *MEMORY[0x277D043B0], v7);
    v38 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_24B7868E0(0, *(v38 + 2) + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
    }

    v52 = *(v38 + 2);
    v51 = *(v38 + 3);
    if (v52 >= v51 >> 1)
    {
      v38 = sub_24B7868E0(v51 > 1, v52 + 1, 1, v38, &qword_27F050CF8, &unk_24B791370, &qword_27F050C88, &qword_24B7911E0);
    }

    *(v38 + 2) = v52 + 1;
    result = (*(v8 + 32))(&v38[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v52], v20, v7);
  }

  *a3 = v38;
  return result;
}

unint64_t sub_24B7857A0()
{
  result = qword_27F050C90;
  if (!qword_27F050C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050C90);
  }

  return result;
}

uint64_t sub_24B7857F4()
{
  *(v0 + 16) = sub_24B7903B8();
  *(v0 + 24) = sub_24B7903A8();
  *(v0 + 40) = 1;
  v1 = *(MEMORY[0x277D043C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CE0, &qword_24B791358);
  *v2 = v0;
  v2[1] = sub_24B7858D8;

  return MEMORY[0x282159B08](v0 + 40, v3);
}

uint64_t sub_24B7858D8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_24B790388();

  return MEMORY[0x2822009F8](sub_24B78710C, v5, v4);
}

uint64_t sub_24B785A14(uint64_t a1, int *a2)
{
  v2[3] = a1;
  v2[4] = sub_24B7903B8();
  v2[5] = sub_24B7903A8();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_24B785B28;

  return v7();
}

uint64_t sub_24B785B28()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v7 = sub_24B790388();

    return MEMORY[0x2822009F8](sub_24B785E84, v7, v6);
  }

  else
  {
    *(v3 + 72) = 2;
    v8 = *(MEMORY[0x277D043C8] + 4);
    v9 = swift_task_alloc();
    *(v3 + 64) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CE0, &qword_24B791358);
    *v9 = v3;
    v9[1] = sub_24B785CE4;
    v11 = *(v3 + 24);

    return MEMORY[0x282159B08](v3 + 72, v10);
  }
}

uint64_t sub_24B785CE4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_24B790388();

  return MEMORY[0x2822009F8](sub_24B785E20, v5, v4);
}

uint64_t sub_24B785E20()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B785E84()
{
  v16 = v0;
  v1 = v0[5];

  if (qword_27F050B40 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_24B790178();
  __swift_project_value_buffer(v3, qword_27F054E30);
  MEMORY[0x24C2494D0](v2);
  v4 = sub_24B790158();
  v5 = sub_24B7903E8();
  MEMORY[0x24C2494C0](v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    MEMORY[0x24C2494D0](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CE8, &qword_24B791360);
    v10 = sub_24B790328();
    v12 = sub_24B786B04(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24B781000, v4, v5, "Observation of remote browsing service subscription returns %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C2495F0](v9, -1, -1);
    MEMORY[0x24C2495F0](v8, -1, -1);
    MEMORY[0x24C2494C0](v7);
  }

  else
  {

    MEMORY[0x24C2494C0](v7);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_24B786060(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_24B7903B8();
  v4[3] = sub_24B7903A8();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_24B786174;

  return v9(1);
}

uint64_t sub_24B786174()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B790388();
  if (v2)
  {
    v8 = sub_24B786334;
  }

  else
  {
    v8 = sub_24B7862D0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B7862D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B786334()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_24B7863A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B78645C;

  return sub_24B786060(a1, v4, v5, v7);
}

uint64_t sub_24B78645C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B786590(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B787108;

  return sub_24B785A14(a1, v4);
}

unint64_t sub_24B786650()
{
  result = qword_27F050CA8;
  if (!qword_27F050CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050CA8);
  }

  return result;
}

unint64_t sub_24B7866A8()
{
  result = qword_27F050CB0;
  if (!qword_27F050CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050CB0);
  }

  return result;
}

unint64_t sub_24B786700()
{
  result = qword_27F050CB8;
  if (!qword_27F050CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050CB8);
  }

  return result;
}

unint64_t sub_24B786758()
{
  result = qword_27F050CC0;
  if (!qword_27F050CC0)
  {
    type metadata accessor for SubscriptionHandoffState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050CC0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B7867BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B786804(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24B786868()
{
  result = qword_27F050CC8;
  if (!qword_27F050CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050CC8);
  }

  return result;
}

size_t sub_24B7868E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24B786B04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B786BD0(v11, 0, 0, 1, a1, a2);
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
    sub_24B7870AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24B786BD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B786CDC(a5, a6);
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
    result = sub_24B790438();
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

uint64_t sub_24B786CDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24B786D28(a1, a2);
  sub_24B786E58(&unk_285E99A98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24B786D28(uint64_t a1, unint64_t a2)
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

  v6 = sub_24B786F44(v5, 0);
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

  result = sub_24B790438();
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
        v10 = sub_24B790358();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B786F44(v10, 0);
        result = sub_24B790408();
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

uint64_t sub_24B786E58(uint64_t result)
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

  result = sub_24B786FB8(result, v12, 1, v3);
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

void *sub_24B786F44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CF0, &qword_24B791368);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B786FB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CF0, &qword_24B791368);
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

uint64_t sub_24B7870AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t RemoteBrowsingIdleMonitorEnvironment.init(invalidateRemoteBrowsing:makeAppIdleOccurredStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 RemoteBrowsingIdleMonitorFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t RemoteBrowsingIdleMonitorFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, void **a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050CD8, &qword_24B791350);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v56 - v15;
  v17 = *a4;
  v18 = *v4;
  v19 = v4[1];
  v20 = v4[2];
  v21 = v4[3];
  if (v17)
  {
    if (*a2 != 1)
    {
      return result;
    }

    v57 = *v4;
    v58 = v20;
    if (qword_27F050B40 != -1)
    {
      swift_once();
    }

    v56 = a3;
    v22 = sub_24B790178();
    __swift_project_value_buffer(v22, qword_27F054E30);
    v23 = sub_24B790158();
    v24 = sub_24B7903E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24B781000, v23, v24, "App Idle Occured", v25, 2u);
      MEMORY[0x24C2495F0](v25, -1, -1);
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C98, &qword_24B7911E8);
    v27 = v26[12];
    v28 = v26[16];
    v29 = v26[20];
    v30 = &v13[v26[24]];
    v60 = 1;
    sub_24B788400();
    sub_24B7903F8();
    v31 = *MEMORY[0x277D043F0];
    v32 = sub_24B7902D8();
    (*(*(v32 - 8) + 104))(&v13[v28], v31, v32);
    v33 = *MEMORY[0x277D043E0];
    v34 = sub_24B7902C8();
    (*(*(v34 - 8) + 104))(&v13[v29], v33, v34);
    v35 = swift_allocObject();
    v36 = v58;
    v35[2] = v57;
    v35[3] = v19;
    v35[4] = v36;
    v35[5] = v21;
    *v30 = &unk_24B791428;
    *(v30 + 1) = v35;

    sub_24B7903C8();
    (*(v9 + 104))(v13, *MEMORY[0x277D043B0], v8);
    v37 = v56;
    v38 = *v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_24B7868BC(0, v38[2] + 1, 1, v38);
    }

    v40 = v38[2];
    v39 = v38[3];
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v38 = sub_24B7868BC(v39 > 1, v40 + 1, 1, v38);
    }

    v16 = v13;
  }

  else
  {
    a2[1] = 1;
    v57 = v18;
    v58 = v20;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050C98, &qword_24B7911E8);
    v56 = v42[12];
    v43 = v42[16];
    v44 = v8;
    v45 = v42[20];
    v46 = &v16[v42[24]];
    v59 = 0;
    sub_24B788400();
    sub_24B7903F8();
    v47 = *MEMORY[0x277D043F0];
    v48 = sub_24B7902D8();
    v49 = &v16[v43];
    v37 = a3;
    (*(*(v48 - 8) + 104))(v49, v47, v48);
    v50 = *MEMORY[0x277D043E0];
    v51 = sub_24B7902C8();
    v52 = &v16[v45];
    v8 = v44;
    (*(*(v51 - 8) + 104))(v52, v50, v51);
    v53 = swift_allocObject();
    v54 = v58;
    v53[2] = v57;
    v53[3] = v19;
    v53[4] = v54;
    v53[5] = v21;
    *v46 = &unk_24B791438;
    *(v46 + 1) = v53;

    sub_24B7903C8();
    (*(v9 + 104))(v16, *MEMORY[0x277D043B0], v44);
    v38 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_24B7868BC(0, v38[2] + 1, 1, v38);
    }

    v40 = v38[2];
    v55 = v38[3];
    v41 = v40 + 1;
    if (v40 >= v55 >> 1)
    {
      v38 = sub_24B7868BC(v55 > 1, v40 + 1, 1, v38);
    }
  }

  v38[2] = v41;
  result = (*(v9 + 32))(v38 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v40, v16, v8);
  *v37 = v38;
  return result;
}

uint64_t sub_24B7876C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[12] = a1;
  v4[13] = sub_24B7903B8();
  v4[14] = sub_24B7903A8();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_24B7877E0;

  return v9(v4 + 7);
}

uint64_t sub_24B7877E0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[16] = v2;

  v8 = sub_24B790388();
  v3[17] = v8;
  v3[18] = v7;
  if (v2)
  {
    v9 = sub_24B787F44;
  }

  else
  {
    v9 = sub_24B787940;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B787940()
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
  sub_24B7903D8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B7903A8();
  v0[19] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_24B787B18;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 22, v7, v11);
}

uint64_t sub_24B787B18()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[19];

    v6 = v2[17];
    v7 = v2[18];

    return MEMORY[0x2822009F8](sub_24B787C2C, v6, v7);
  }

  return result;
}

uint64_t sub_24B787C2C()
{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 177) = 1;
    v4 = *(MEMORY[0x277D043C8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050D28, &qword_24B791568);
    *v5 = v0;
    v5[1] = sub_24B787D48;
    v7 = *(v0 + 96);

    return MEMORY[0x282159B08](v0 + 177, v6);
  }
}

uint64_t sub_24B787D48()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_24B787E68, v4, v3);
}

uint64_t sub_24B787E68()
{
  v1 = v0[13];
  v2 = sub_24B7903A8();
  v0[19] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_24B787B18;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 22, v2, v6);
}

uint64_t sub_24B787F44()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_24B787FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B7903B8();
  v3[4] = sub_24B7903A8();
  v5 = sub_24B790388();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B788040, v5, v4);
}

uint64_t sub_24B788040()
{
  if (qword_27F050B40 != -1)
  {
    swift_once();
  }

  v1 = sub_24B790178();
  __swift_project_value_buffer(v1, qword_27F054E30);
  v2 = sub_24B790158();
  v3 = sub_24B7903E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B781000, v2, v3, "Invalidating Remote Browsing", v4, 2u);
    MEMORY[0x24C2495F0](v4, -1, -1);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_24B7881E8;
  v8 = v0[3];

  return v10();
}

uint64_t sub_24B7881E8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_24B788388;
  }

  else
  {
    v7 = sub_24B788324;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B788324()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B788388()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

unint64_t sub_24B788400()
{
  result = qword_27F050D00;
  if (!qword_27F050D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D00);
  }

  return result;
}

uint64_t sub_24B788454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B78645C;

  return sub_24B787FA8(a1, v4, v5);
}

uint64_t sub_24B788510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B787108;

  return sub_24B7876C4(a1, v4, v5, v7);
}

unint64_t sub_24B7885D0()
{
  result = qword_27F050D08;
  if (!qword_27F050D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D08);
  }

  return result;
}

unint64_t sub_24B788628()
{
  result = qword_27F050D10;
  if (!qword_27F050D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D10);
  }

  return result;
}

unint64_t sub_24B788680()
{
  result = qword_27F050D18;
  if (!qword_27F050D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D18);
  }

  return result;
}

unint64_t sub_24B7886E8()
{
  result = qword_27F050D20;
  if (!qword_27F050D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D20);
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

unint64_t sub_24B788838()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_24B788874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000024B793840 == a2 || (sub_24B790528() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B790528();

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

uint64_t sub_24B788958(uint64_t a1)
{
  v2 = sub_24B788B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B788994(uint64_t a1)
{
  v2 = sub_24B788B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteBrowsingIdleMonitorState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050D30, &qword_24B791580);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B788B58();
  sub_24B790588();
  v16 = 0;
  sub_24B790508();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_24B788BAC();
    sub_24B790518();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B788B58()
{
  result = qword_27F050D38;
  if (!qword_27F050D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D38);
  }

  return result;
}

unint64_t sub_24B788BAC()
{
  result = qword_27F050D40;
  if (!qword_27F050D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D40);
  }

  return result;
}

uint64_t RemoteBrowsingIdleMonitorState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050D48, &qword_24B791588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B788B58();
  sub_24B790578();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_24B790498();
    v15 = 1;
    sub_24B788DC0();
    sub_24B7904A8();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v11 & 1;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B788DC0()
{
  result = qword_27F050D50;
  if (!qword_27F050D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteBrowsingIdleMonitorState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for RemoteBrowsingIdleMonitorState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_24B789018()
{
  result = qword_27F050D58;
  if (!qword_27F050D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D58);
  }

  return result;
}

unint64_t sub_24B789070()
{
  result = qword_27F050D60;
  if (!qword_27F050D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D60);
  }

  return result;
}

unint64_t sub_24B7890C8()
{
  result = qword_27F050D68;
  if (!qword_27F050D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D68);
  }

  return result;
}

unint64_t sub_24B789128@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21FitnessRemoteBrowsing0B29ParticipantDiscoveryInterfaceO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s21FitnessRemoteBrowsing0B29ParticipantDiscoveryInterfaceO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_24B789224()
{
  result = qword_27F050D70;
  if (!qword_27F050D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteParticipantDiscoveryInterface(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteParticipantDiscoveryInterface(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B7893C8()
{
  result = qword_27F050D78;
  if (!qword_27F050D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D78);
  }

  return result;
}

uint64_t SubscriptionHandoffEnvironment.init(requireRemoteBrowsingServiceSubscription:dismiss:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B78946C()
{
  v0 = sub_24B790178();
  __swift_allocate_value_buffer(v0, qword_27F054E30);
  __swift_project_value_buffer(v0, qword_27F054E30);
  return sub_24B790168();
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

uint64_t sub_24B78956C(uint64_t a1)
{
  v2 = sub_24B789AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7895A8(uint64_t a1)
{
  v2 = sub_24B789AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B7895E4()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 1701602409;
  }

  *v0;
  return result;
}

uint64_t sub_24B789614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B790528() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B790528();

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

uint64_t sub_24B7896EC(uint64_t a1)
{
  v2 = sub_24B789A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B789728(uint64_t a1)
{
  v2 = sub_24B789A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B789764(uint64_t a1)
{
  v2 = sub_24B789B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B7897A0(uint64_t a1)
{
  v2 = sub_24B789B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteBrowsingIdleMonitorLoadState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050D80, &qword_24B791910);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050D88, &qword_24B791918);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050D90, &qword_24B791920);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B789A8C();
  sub_24B790588();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_24B789AE0();
    v18 = v22;
    sub_24B7904C8();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_24B789B34();
    sub_24B7904C8();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_24B789A8C()
{
  result = qword_27F050D98;
  if (!qword_27F050D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050D98);
  }

  return result;
}

unint64_t sub_24B789AE0()
{
  result = qword_27F050DA0;
  if (!qword_27F050DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DA0);
  }

  return result;
}

unint64_t sub_24B789B34()
{
  result = qword_27F050DA8;
  if (!qword_27F050DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DA8);
  }

  return result;
}

uint64_t RemoteBrowsingIdleMonitorLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050DB0, &qword_24B791928);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050DB8, &qword_24B791930);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050DC0, &unk_24B791938);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B789A8C();
  v16 = v36;
  sub_24B790578();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_24B7904B8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_24B7836DC();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_24B790428();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B90, &qword_24B790940) + 48);
      *v26 = &type metadata for RemoteBrowsingIdleMonitorLoadState;
      sub_24B790458();
      sub_24B790418();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_24B789AE0();
        sub_24B790448();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_24B789B34();
        sub_24B790448();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t RemoteBrowsingIdleMonitorLoadState.hashValue.getter()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1);
  return sub_24B790568();
}

unint64_t sub_24B78A0EC()
{
  result = qword_27F050DC8;
  if (!qword_27F050DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DC8);
  }

  return result;
}

unint64_t sub_24B78A174()
{
  result = qword_27F050DD0;
  if (!qword_27F050DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DD0);
  }

  return result;
}

unint64_t sub_24B78A1CC()
{
  result = qword_27F050DD8;
  if (!qword_27F050DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DD8);
  }

  return result;
}

unint64_t sub_24B78A224()
{
  result = qword_27F050DE0;
  if (!qword_27F050DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DE0);
  }

  return result;
}

unint64_t sub_24B78A27C()
{
  result = qword_27F050DE8;
  if (!qword_27F050DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DE8);
  }

  return result;
}

unint64_t sub_24B78A2D4()
{
  result = qword_27F050DF0;
  if (!qword_27F050DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DF0);
  }

  return result;
}

unint64_t sub_24B78A32C()
{
  result = qword_27F050DF8;
  if (!qword_27F050DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050DF8);
  }

  return result;
}

unint64_t sub_24B78A384()
{
  result = qword_27F050E00;
  if (!qword_27F050E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E00);
  }

  return result;
}

uint64_t RemoteParticipant.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RemoteParticipant.deviceOwner.getter()
{
  v1 = *(v0 + 24);
  sub_24B78A458(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t sub_24B78A458(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t RemoteParticipant.idsIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RemoteParticipant.name.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 RemoteParticipant.init(identifier:role:deviceOwner:discoveryInterface:idsIdentifier:name:deviceType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, char a12)
{
  result = a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 80) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 81) = a12;
  return result;
}

unint64_t sub_24B78A514()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0x7954656369766564;
  }

  v4 = 0x746E656449736469;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701605234;
  if (v1 != 1)
  {
    v5 = 0x774F656369766564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B78A5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B78BAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B78A630(uint64_t a1)
{
  v2 = sub_24B78A990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78A66C(uint64_t a1)
{
  v2 = sub_24B78A990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B78A6A8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RemoteParticipant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050E08, &qword_24B791CC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v32 = *(v1 + 16);
  v10 = v1[3];
  v26 = v1[4];
  v27 = v10;
  v25 = *(v1 + 40);
  v11 = v1[6];
  v23 = v1[7];
  v24 = v11;
  v12 = v1[9];
  v21 = v1[8];
  v22 = v12;
  LODWORD(v11) = *(v1 + 80);
  v19 = *(v1 + 81);
  v20 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B78A990();
  sub_24B790588();
  LOBYTE(v29) = 0;
  v14 = v28;
  sub_24B7904F8();
  if (!v14)
  {
    v15 = v25;
    v17 = v26;
    v16 = v27;
    LOBYTE(v29) = v32;
    v33 = 1;
    sub_24B78A9E4();
    sub_24B790518();
    v29 = v16;
    v30 = v17;
    v31 = v15;
    v33 = 2;
    sub_24B78AA38();
    sub_24B790518();
    LOBYTE(v29) = 3;
    sub_24B7904D8();
    LOBYTE(v29) = 4;
    sub_24B7904D8();
    LOBYTE(v29) = v20;
    v33 = 5;
    sub_24B78AA8C();
    sub_24B790518();
    LOBYTE(v29) = v19;
    v33 = 6;
    sub_24B78AAE0();
    sub_24B7904E8();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B78A990()
{
  result = qword_27F050E10;
  if (!qword_27F050E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E10);
  }

  return result;
}

unint64_t sub_24B78A9E4()
{
  result = qword_27F050E18;
  if (!qword_27F050E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E18);
  }

  return result;
}

unint64_t sub_24B78AA38()
{
  result = qword_27F050E20;
  if (!qword_27F050E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E20);
  }

  return result;
}

unint64_t sub_24B78AA8C()
{
  result = qword_27F050E28;
  if (!qword_27F050E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E28);
  }

  return result;
}

unint64_t sub_24B78AAE0()
{
  result = qword_27F050E30;
  if (!qword_27F050E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E30);
  }

  return result;
}

uint64_t RemoteParticipant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050E38, &qword_24B791CC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B78A990();
  sub_24B790578();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39) = 0;
  v11 = sub_24B790488();
  v13 = v12;
  LOBYTE(v33) = 1;
  sub_24B78B05C();
  sub_24B7904A8();
  v51 = v39;
  LOBYTE(v33) = 2;
  sub_24B78B0B0();
  sub_24B7904A8();
  v30 = v39;
  v31 = v40;
  v32 = v41;
  LOBYTE(v39) = 3;
  v14 = sub_24B790468();
  v29 = v15;
  v26 = v14;
  LOBYTE(v39) = 4;
  v28 = 0;
  v25 = sub_24B790468();
  v27 = v16;
  LOBYTE(v33) = 5;
  sub_24B78B104();
  sub_24B7904A8();
  HIDWORD(v24) = v39;
  v52 = 6;
  sub_24B78B158();
  sub_24B790478();
  (*(v6 + 8))(v9, v5);
  LODWORD(v28) = v53;
  *&v33 = v11;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v51;
  v17 = v30;
  v18 = v31;
  *(&v34 + 1) = v30;
  *&v35 = v31;
  v19 = v32;
  BYTE8(v35) = v32;
  v20 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  *&v37 = v25;
  *(&v37 + 1) = v27;
  LOBYTE(v38) = BYTE4(v24);
  HIBYTE(v38) = v53;
  v21 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v21;
  *(a2 + 64) = v37;
  v22 = v34;
  *a2 = v33;
  *(a2 + 16) = v22;
  *(a2 + 80) = v38;
  sub_24B78B1AC(&v33, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = v11;
  v40 = v13;
  v41 = v51;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v26;
  v46 = v20;
  v47 = v25;
  v48 = v27;
  v49 = BYTE4(v24);
  v50 = v28;
  return sub_24B78B1E4(&v39);
}

uint64_t sub_24B78B044(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_24B78B05C()
{
  result = qword_27F050E40;
  if (!qword_27F050E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E40);
  }

  return result;
}

unint64_t sub_24B78B0B0()
{
  result = qword_27F050E48;
  if (!qword_27F050E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E48);
  }

  return result;
}

unint64_t sub_24B78B104()
{
  result = qword_27F050E50;
  if (!qword_27F050E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E50);
  }

  return result;
}

unint64_t sub_24B78B158()
{
  result = qword_27F050E58;
  if (!qword_27F050E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E58);
  }

  return result;
}

uint64_t RemoteParticipant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v15 = v0[8];
  v10 = *(v0 + 80);
  v11 = *(v0 + 81);
  sub_24B790348();
  MEMORY[0x24C2492F0](v3);
  if (!v6)
  {
    v12 = 2;
LABEL_5:
    MEMORY[0x24C2492F0](v12);
    sub_24B790348();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_24B790558();
    if (v9)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (v6 == 1)
  {
    v12 = 3;
    goto LABEL_5;
  }

  if (v5 | v4)
  {
    if (v5 ^ 1 | v4)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x24C2492F0](v13);
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_24B790558();
  sub_24B790348();
  if (v9)
  {
LABEL_7:
    sub_24B790558();
    sub_24B790348();
    goto LABEL_16;
  }

LABEL_15:
  sub_24B790558();
LABEL_16:
  MEMORY[0x24C2492F0](v10);
  if (v11 == 4)
  {
    return sub_24B790558();
  }

  sub_24B790558();
  return MEMORY[0x24C2492F0](v11 + 1);
}

uint64_t RemoteParticipant.hashValue.getter()
{
  sub_24B790538();
  RemoteParticipant.hash(into:)();
  return sub_24B790568();
}

uint64_t sub_24B78B3DC()
{
  sub_24B790538();
  RemoteParticipant.hash(into:)();
  return sub_24B790568();
}

uint64_t sub_24B78B420()
{
  sub_24B790538();
  RemoteParticipant.hash(into:)();
  return sub_24B790568();
}

uint64_t _s21FitnessRemoteBrowsing0B11ParticipantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v27 = *(a1 + 64);
  v31 = *(a1 + 72);
  v25 = *(a1 + 81);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v12 = *(a2 + 56);
  v26 = *(a2 + 64);
  v30 = *(a2 + 72);
  v28 = *(a2 + 80);
  v29 = *(a1 + 80);
  v24 = *(a2 + 81);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v22 = *(a2 + 40);
    v23 = *(a1 + 24);
    v14 = *(a2 + 56);
    v15 = *(a1 + 56);
    v16 = *(a1 + 48);
    v17 = sub_24B790528();
    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }

    v6 = v16;
    v7 = v15;
    v12 = v14;
    v3 = v23;
    v11 = v22;
    if (v2 != v8)
    {
      return result;
    }
  }

  if (!v5)
  {
    if (v11)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v5 == 1)
  {
    if (v11 != 1)
    {
      return 0;
    }

LABEL_12:
    if (v3 != v10 || v4 != v9)
    {
      v19 = v6;
      v20 = sub_24B790528();
      v6 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_27;
  }

  if (v3 | v4)
  {
    if (v3 ^ 1 | v4)
    {
      if (v11 != 2)
      {
        return 0;
      }

      result = 0;
      if (v10 != 2)
      {
        return result;
      }
    }

    else
    {
      if (v11 != 2)
      {
        return 0;
      }

      result = 0;
      if (v10 != 1)
      {
        return result;
      }
    }

    if (v9)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11 != 2 || v9 | v10)
    {
      return result;
    }
  }

LABEL_27:
  if (v7)
  {
    if (!v12 || (v6 != v13 || v7 != v12) && (sub_24B790528() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v31)
  {
    if (v30)
    {
      if (v27 == v26 && v31 == v30)
      {
        if (v29 != v28)
        {
          return 0;
        }

LABEL_44:
        if (v25 == 4)
        {
          if (v24 != 4)
          {
            return 0;
          }
        }

        else if (v24 == 4 || v25 != v24)
        {
          return 0;
        }

        return 1;
      }

      v21 = sub_24B790528();
      result = 0;
      if ((v21 & 1) == 0)
      {
        return result;
      }

LABEL_43:
      if (v29 != v28)
      {
        return result;
      }

      goto LABEL_44;
    }

    return 0;
  }

  result = 0;
  if (!v30)
  {
    goto LABEL_43;
  }

  return result;
}

unint64_t sub_24B78B70C()
{
  result = qword_27F050E60;
  if (!qword_27F050E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21FitnessRemoteBrowsing0B22ParticipantDeviceOwnerO(uint64_t a1)
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

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24B78B7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_24B78B7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteParticipantRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteParticipantRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B78B9A4()
{
  result = qword_27F050E68;
  if (!qword_27F050E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E68);
  }

  return result;
}

unint64_t sub_24B78B9FC()
{
  result = qword_27F050E70;
  if (!qword_27F050E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E70);
  }

  return result;
}

unint64_t sub_24B78BA54()
{
  result = qword_27F050E78;
  if (!qword_27F050E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050E78);
  }

  return result;
}

uint64_t sub_24B78BAA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B790528() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_24B790528() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x774F656369766564 && a2 == 0xEB0000000072656ELL || (sub_24B790528() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656449736469 && a2 == 0xED00007265696669 || (sub_24B790528() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B790528() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B7938B0 == a2 || (sub_24B790528() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    return 6;
  }

  else
  {
    v5 = sub_24B790528();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24B78BD1C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x796C696D6166;
  v4 = 0x646572616873;
  if (v1 != 3)
  {
    v4 = 0x7473657567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25965;
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

uint64_t sub_24B78BDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B78CE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B78BDD4(uint64_t a1)
{
  v2 = sub_24B78CC70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78BE10(uint64_t a1)
{
  v2 = sub_24B78CC70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B78BE54(uint64_t a1)
{
  v2 = sub_24B78CD6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78BE90(uint64_t a1)
{
  v2 = sub_24B78CD6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B78BECC(uint64_t a1)
{
  v2 = sub_24B78CCC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78BF08(uint64_t a1)
{
  v2 = sub_24B78CCC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B78BF44(uint64_t a1)
{
  v2 = sub_24B78CDC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78BF80(uint64_t a1)
{
  v2 = sub_24B78CDC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B78BFBC()
{
  sub_24B790538();
  MEMORY[0x24C2492F0](0);
  return sub_24B790568();
}

uint64_t sub_24B78C000()
{
  sub_24B790538();
  MEMORY[0x24C2492F0](0);
  return sub_24B790568();
}

uint64_t sub_24B78C040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024B7938D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B790528();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B78C0D4(uint64_t a1)
{
  v2 = sub_24B78CD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78C110(uint64_t a1)
{
  v2 = sub_24B78CD18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B78C14C(uint64_t a1)
{
  v2 = sub_24B78CE14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78C188(uint64_t a1)
{
  v2 = sub_24B78CE14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteParticipantDeviceOwner.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v47 = a4;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050E80, &qword_24B791FA0);
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050E88, &qword_24B791FA8);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050E90, &qword_24B791FB0);
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050E98, &qword_24B791FB8);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050EA0, &qword_24B791FC0);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050EA8, &qword_24B791FC8);
  v49 = *(v24 - 8);
  v50 = v24;
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B78CC70();
  sub_24B790588();
  if (v47)
  {
    if (v47 == 1)
    {
      v54 = 3;
      sub_24B78CD18();
      v29 = v50;
      sub_24B7904C8();
      v30 = v46;
      sub_24B7904F8();
      (*(v45 + 8))(v11, v30);
      return (*(v49 + 8))(v27, v29);
    }

    else if (v48 == 0)
    {
      v51 = 0;
      sub_24B78CE14();
      v35 = v50;
      sub_24B7904C8();
      (*(v37 + 8))(v23, v20);
      return (*(v49 + 8))(v27, v35);
    }

    else
    {
      if (v48 ^ 1 | *(&v48 + 1))
      {
        v55 = 4;
        sub_24B78CCC4();
        v36 = v40;
        v34 = v50;
        sub_24B7904C8();
        (*(v41 + 8))(v36, v42);
      }

      else
      {
        v52 = 1;
        sub_24B78CDC0();
        v34 = v50;
        sub_24B7904C8();
        (*(v38 + 8))(v19, v39);
      }

      return (*(v49 + 8))(v27, v34);
    }
  }

  else
  {
    v53 = 2;
    sub_24B78CD6C();
    v32 = v50;
    sub_24B7904C8();
    v33 = v44;
    sub_24B7904F8();
    (*(v43 + 8))(v15, v33);
    return (*(v49 + 8))(v27, v32);
  }
}

uint64_t RemoteParticipantDeviceOwner.init(from:)(uint64_t *a1)
{
  result = sub_24B78D004(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_24B78C7B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24B78D004(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t RemoteParticipantDeviceOwner.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 3;
LABEL_5:
    MEMORY[0x24C2492F0](v4);

    return sub_24B790348();
  }

  if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x24C2492F0](v6);
}

uint64_t RemoteParticipantDeviceOwner.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B790538();
  if (!a3)
  {
    v6 = 2;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = 3;
LABEL_5:
    MEMORY[0x24C2492F0](v6);
    sub_24B790348();
    return sub_24B790568();
  }

  if (a1 | a2)
  {
    if (a1 ^ 1 | a2)
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x24C2492F0](v7);
  return sub_24B790568();
}

uint64_t sub_24B78C968()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_24B790538();
  if (!v3)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 3;
LABEL_5:
    MEMORY[0x24C2492F0](v4);
    sub_24B790348();
    return sub_24B790568();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x24C2492F0](v5);
  return sub_24B790568();
}

uint64_t sub_24B78CA1C()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 16))
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    v3 = 3;
LABEL_5:
    MEMORY[0x24C2492F0](v3);

    return sub_24B790348();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x24C2492F0](v5);
}

uint64_t sub_24B78CAC8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_24B790538();
  if (!v3)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 3;
LABEL_5:
    MEMORY[0x24C2492F0](v4);
    sub_24B790348();
    return sub_24B790568();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x24C2492F0](v5);
  return sub_24B790568();
}

uint64_t _s21FitnessRemoteBrowsing0B22ParticipantDeviceOwnerO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_24B790528();
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_24B790528();
  }

  return 0;
}

unint64_t sub_24B78CC70()
{
  result = qword_27F050EB0;
  if (!qword_27F050EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EB0);
  }

  return result;
}

unint64_t sub_24B78CCC4()
{
  result = qword_27F050EB8;
  if (!qword_27F050EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EB8);
  }

  return result;
}

unint64_t sub_24B78CD18()
{
  result = qword_27F050EC0;
  if (!qword_27F050EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EC0);
  }

  return result;
}

unint64_t sub_24B78CD6C()
{
  result = qword_27F050EC8;
  if (!qword_27F050EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EC8);
  }

  return result;
}

unint64_t sub_24B78CDC0()
{
  result = qword_27F050ED0;
  if (!qword_27F050ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050ED0);
  }

  return result;
}

unint64_t sub_24B78CE14()
{
  result = qword_27F050ED8;
  if (!qword_27F050ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050ED8);
  }

  return result;
}

uint64_t sub_24B78CE68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B790528() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25965 && a2 == 0xE200000000000000 || (sub_24B790528() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000 || (sub_24B790528() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646572616873 && a2 == 0xE600000000000000 || (sub_24B790528() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473657567 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B790528();

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

uint64_t sub_24B78D004(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050F60, &qword_24B792690);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v42 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050F68, &qword_24B792698);
  v52 = *(v48 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v55 = &v42 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050F70, &qword_24B7926A0);
  v49 = *(v45 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v45);
  v54 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050F78, &qword_24B7926A8);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050F80, &qword_24B7926B0);
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050F88, &qword_24B7926B8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B78CC70();
  v24 = v56;
  sub_24B790578();
  if (!v24)
  {
    v25 = v16;
    v43 = v13;
    v26 = v54;
    v27 = v55;
    v56 = v18;
    v28 = sub_24B7904B8();
    v29 = (2 * *(v28 + 16)) | 1;
    v58 = v28;
    v59 = v28 + 32;
    v60 = 0;
    v61 = v29;
    v30 = sub_24B783710();
    if (v30 == 5 || v60 != v61 >> 1)
    {
      v33 = sub_24B790428();
      swift_allocError();
      v34 = v21;
      v36 = v35;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050B90, &qword_24B790940) + 48);
      *v36 = &type metadata for RemoteParticipantDeviceOwner;
      sub_24B790458();
      sub_24B790418();
      (*(*(v33 - 8) + 104))(v36, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v56 + 8))(v34, v17);
      swift_unknownObjectRelease();
    }

    else if (v30 <= 1u)
    {
      if (v30)
      {
        v62 = 1;
        sub_24B78CDC0();
        sub_24B790448();
        (*(v46 + 8))(v12, v47);
        (*(v56 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v18 = 1;
      }

      else
      {
        v62 = 0;
        sub_24B78CE14();
        sub_24B790448();
        (*(v44 + 8))(v25, v43);
        (*(v56 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v18 = 0;
      }
    }

    else if (v30 == 2)
    {
      v62 = 2;
      sub_24B78CD6C();
      v38 = v26;
      sub_24B790448();
      v39 = v56;
      v40 = v45;
      v18 = sub_24B790488();
      (*(v49 + 8))(v38, v40);
      (*(v39 + 8))(v21, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v56;
      if (v30 == 3)
      {
        v62 = 3;
        sub_24B78CD18();
        sub_24B790448();
        v32 = v48;
        v18 = sub_24B790488();
        (*(v52 + 8))(v27, v32);
        (*(v31 + 8))(v21, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 4;
        sub_24B78CCC4();
        v41 = v53;
        sub_24B790448();
        (*(v50 + 8))(v41, v51);
        (*(v31 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v18 = 2;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v18;
}

unint64_t sub_24B78D878()
{
  result = qword_27F050EE0;
  if (!qword_27F050EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EE0);
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

uint64_t sub_24B78D8E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B78D928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24B78D96C(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for SubscriptionHandoffState.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SubscriptionHandoffState.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24B78DAD0()
{
  result = qword_27F050EE8;
  if (!qword_27F050EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EE8);
  }

  return result;
}

unint64_t sub_24B78DB28()
{
  result = qword_27F050EF0;
  if (!qword_27F050EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EF0);
  }

  return result;
}

unint64_t sub_24B78DB80()
{
  result = qword_27F050EF8;
  if (!qword_27F050EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050EF8);
  }

  return result;
}

unint64_t sub_24B78DBD8()
{
  result = qword_27F050F00;
  if (!qword_27F050F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F00);
  }

  return result;
}

unint64_t sub_24B78DC30()
{
  result = qword_27F050F08;
  if (!qword_27F050F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F08);
  }

  return result;
}

unint64_t sub_24B78DC88()
{
  result = qword_27F050F10;
  if (!qword_27F050F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F10);
  }

  return result;
}

unint64_t sub_24B78DCE0()
{
  result = qword_27F050F18;
  if (!qword_27F050F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F18);
  }

  return result;
}

unint64_t sub_24B78DD38()
{
  result = qword_27F050F20;
  if (!qword_27F050F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F20);
  }

  return result;
}

unint64_t sub_24B78DD90()
{
  result = qword_27F050F28;
  if (!qword_27F050F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F28);
  }

  return result;
}

unint64_t sub_24B78DDE8()
{
  result = qword_27F050F30;
  if (!qword_27F050F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F30);
  }

  return result;
}

unint64_t sub_24B78DE40()
{
  result = qword_27F050F38;
  if (!qword_27F050F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F38);
  }

  return result;
}

unint64_t sub_24B78DE98()
{
  result = qword_27F050F40;
  if (!qword_27F050F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F40);
  }

  return result;
}

unint64_t sub_24B78DEF0()
{
  result = qword_27F050F48;
  if (!qword_27F050F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F48);
  }

  return result;
}

unint64_t sub_24B78DF48()
{
  result = qword_27F050F50;
  if (!qword_27F050F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F50);
  }

  return result;
}

unint64_t sub_24B78DFA0()
{
  result = qword_27F050F58;
  if (!qword_27F050F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F58);
  }

  return result;
}

unint64_t sub_24B78E01C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21FitnessRemoteBrowsing0B15ParticipantRoleO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s21FitnessRemoteBrowsing0B15ParticipantRoleO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_24B78E128()
{
  result = qword_27F050F90;
  if (!qword_27F050F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F90);
  }

  return result;
}

unint64_t sub_24B78E180()
{
  result = qword_27F050F98;
  if (!qword_27F050F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F050FA0, &qword_24B7927B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050F98);
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

unint64_t sub_24B78E23C()
{
  result = qword_27F050FA8;
  if (!qword_27F050FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050FA8);
  }

  return result;
}

uint64_t sub_24B78E2A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21FitnessRemoteBrowsing0B21ParticipantDeviceTypeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24B78E38C()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1 + 1);
  return sub_24B790568();
}

uint64_t sub_24B78E404()
{
  v1 = *v0;
  sub_24B790538();
  MEMORY[0x24C2492F0](v1 + 1);
  return sub_24B790568();
}

uint64_t _s21FitnessRemoteBrowsing0B21ParticipantDeviceTypeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_24B78E470()
{
  result = qword_27F050FB0;
  if (!qword_27F050FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050FB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteParticipantDeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteParticipantDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B78E614()
{
  result = qword_27F050FB8;
  if (!qword_27F050FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050FB8);
  }

  return result;
}

uint64_t SubscriptionHandoffView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_24B78E6C8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_24B78E6C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t SubscriptionHandoffView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = sub_24B790208();
  v34 = 1;
  sub_24B78E92C(&v19);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v35 = v19;
  v36 = v20;
  v49[10] = v29;
  v49[11] = v30;
  v49[12] = v31;
  v49[13] = v32;
  v49[6] = v25;
  v49[7] = v26;
  v49[8] = v27;
  v49[9] = v28;
  v49[2] = v21;
  v49[3] = v22;
  v49[4] = v23;
  v49[5] = v24;
  v49[0] = v19;
  v49[1] = v20;
  sub_24B78F33C(&v35, &v18, &qword_27F050FC0, &qword_24B792950);
  sub_24B78F3A4(v49, &qword_27F050FC0, &qword_24B792950);
  *&v33[167] = v45;
  *&v33[183] = v46;
  *&v33[199] = v47;
  *&v33[215] = v48;
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v7 = v34;
  v8 = sub_24B790228();
  LOBYTE(v19) = 0;
  v9 = swift_allocObject();
  v10 = *&v33[160];
  *(a1 + 193) = *&v33[176];
  v11 = *&v33[208];
  *(a1 + 209) = *&v33[192];
  *(a1 + 225) = v11;
  v12 = *&v33[96];
  *(a1 + 129) = *&v33[112];
  v13 = *&v33[144];
  *(a1 + 145) = *&v33[128];
  *(a1 + 161) = v13;
  *(a1 + 177) = v10;
  v14 = *&v33[32];
  *(a1 + 65) = *&v33[48];
  v15 = *&v33[80];
  *(a1 + 81) = *&v33[64];
  *(a1 + 97) = v15;
  *(a1 + 113) = v12;
  v16 = *&v33[16];
  *(a1 + 17) = *v33;
  *(a1 + 33) = v16;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 240) = *&v33[223];
  *(a1 + 49) = v14;
  *(a1 + 248) = v8;
  *(a1 + 256) = xmmword_24B792940;
  *(a1 + 272) = xmmword_24B792940;
  *(a1 + 288) = 0;
  *(a1 + 296) = sub_24B78F0A0;
  *(a1 + 304) = v9;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  return sub_24B78F0AC();
}

uint64_t sub_24B78E92C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B790218();
  LOBYTE(v32) = 0;
  sub_24B78EC38(&v36);
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v30[0] = v36;
  v30[1] = v37;
  v30[2] = v38;
  v30[3] = v39;
  v30[4] = v40;
  v30[5] = v41;
  v30[6] = v42;
  v31 = v43;
  sub_24B78F33C(&v22, v47, &qword_27F051008, &qword_24B792A58);
  sub_24B78F3A4(v30, &qword_27F051008, &qword_24B792A58);
  *&v16[71] = v26;
  *&v16[87] = v27;
  *&v16[103] = v28;
  *&v16[7] = v22;
  *&v16[23] = v23;
  *&v16[39] = v24;
  *&v16[119] = v29;
  *&v16[55] = v25;
  v3 = v32;
  v4 = sub_24B790288();
  KeyPath = swift_getKeyPath();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_24B790298();
  sub_24B7902A8();
  sub_24B790198();
  *&v32 = v2;
  *(&v32 + 1) = 0x4041800000000000;
  LOBYTE(v33[0]) = v3;
  *(&v33[4] + 1) = *&v16[64];
  *(&v33[5] + 1) = *&v16[80];
  *(&v33[6] + 1) = *&v16[96];
  v33[7] = *&v16[111];
  *(v33 + 1) = *v16;
  *(&v33[1] + 1) = *&v16[16];
  *(&v33[2] + 1) = *&v16[32];
  *(&v33[3] + 1) = *&v16[48];
  *&v34 = v4;
  *(&v34 + 1) = KeyPath;
  v35 = 1;
  LOBYTE(v46) = 1;
  v40 = v33[3];
  v41 = v33[4];
  v42 = v33[5];
  v43 = v33[6];
  v36 = v32;
  v37 = v33[0];
  v38 = v33[1];
  v39 = v33[2];
  v9 = v34;
  v44 = *&v16[111];
  v45 = v34;
  *(a1 + 128) = *&v16[111];
  *(a1 + 144) = v9;
  v10 = v46;
  v11 = v41;
  *(a1 + 64) = v40;
  *(a1 + 80) = v11;
  v12 = v43;
  *(a1 + 96) = v42;
  *(a1 + 112) = v12;
  v13 = v37;
  *a1 = v36;
  *(a1 + 16) = v13;
  v14 = v39;
  *(a1 + 32) = v38;
  *(a1 + 48) = v14;
  *(a1 + 160) = v10;
  *(a1 + 168) = v8;
  *(a1 + 176) = v17;
  *(a1 + 184) = v18;
  *(a1 + 192) = v19;
  *(a1 + 200) = v20;
  *(a1 + 208) = v21;
  sub_24B78F33C(&v32, v47, &qword_27F051010, &qword_24B792A90);
  v53 = *&v16[64];
  v54 = *&v16[80];
  *v55 = *&v16[96];
  *&v55[15] = *&v16[111];
  v49 = *v16;
  v50 = *&v16[16];
  v51 = *&v16[32];
  v47[0] = v2;
  v47[1] = 0x4041800000000000;
  v48 = v3;
  v52 = *&v16[48];
  v56 = v4;
  v57 = KeyPath;
  v58 = 1;
  return sub_24B78F3A4(v47, &qword_27F051010, &qword_24B792A90);
}

id sub_24B78EC38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B790148();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24B790318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B790308();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_24B790138();
  sub_24B790338();
  v9 = objc_opt_self();
  result = [v9 _preferredFontForTextStyle_addingSymbolicTraits_];
  if (result)
  {
    sub_24B790238();
    v11 = sub_24B790248();
    v27 = v12;
    v28 = v13;
    v26 = v14;

    sub_24B790308();
    v15 = [v7 bundleForClass_];
    sub_24B790138();
    v16 = sub_24B790338();
    v18 = v17;
    KeyPath = swift_getKeyPath();
    result = [v9 _preferredFontForTextStyle_variant_];
    if (result)
    {
      v20 = sub_24B790238();
      v21 = swift_getKeyPath();
      v45 = 0;
      v44 = 1;
      v29[80] = v26 & 1;
      *&v30 = v16;
      *(&v30 + 1) = v18;
      LOBYTE(v31) = 0;
      v22 = MEMORY[0x277D84F90];
      *(&v31 + 1) = MEMORY[0x277D84F90];
      v32 = KeyPath;
      LOBYTE(v33) = 1;
      *(&v33 + 1) = v21;
      *&v34 = v20;
      *(&v34 + 1) = 0x3FD3333333333333;
      v35[0] = v16;
      *a1 = v11;
      *(a1 + 8) = v27;
      *(a1 + 16) = v26 & 1;
      *(a1 + 24) = v28;
      *(a1 + 32) = 0x3FE0000000000000;
      v23 = v31;
      *(a1 + 40) = v30;
      v24 = v32;
      v25 = v33;
      *(a1 + 104) = v34;
      *(a1 + 88) = v25;
      *(a1 + 72) = v24;
      *(a1 + 56) = v23;
      v35[1] = v18;
      v36 = 0;
      v37 = v22;
      v38 = KeyPath;
      v39 = 0;
      v40 = 1;
      v41 = v21;
      v42 = v20;
      v43 = 0x3FD3333333333333;
      sub_24B78F32C(v11, v27, v26 & 1);

      sub_24B78F33C(&v30, v29, &qword_27F051018, &qword_24B792AF8);
      sub_24B78F3A4(v35, &qword_27F051018, &qword_24B792AF8);
      sub_24B78F404(v11, v27, v26 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B78EFE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F050FF8, &qword_24B792A50);
  sub_24B78F2E4(&qword_27F051000, &qword_27F050FF8, &qword_24B792A50);
  sub_24B790188();
  sub_24B7902E8();
}

uint64_t sub_24B78F0A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_24B78EFE0();
}

uint64_t sub_24B78F104(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B78F14C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B78F1A0()
{
  result = qword_27F050FC8;
  if (!qword_27F050FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F050FD0, "n\n");
    sub_24B78F22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050FC8);
  }

  return result;
}

unint64_t sub_24B78F22C()
{
  result = qword_27F050FD8;
  if (!qword_27F050FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F050FE0, &qword_24B792A40);
    sub_24B78F2E4(&qword_27F050FE8, &qword_27F050FF0, &qword_24B792A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F050FD8);
  }

  return result;
}

uint64_t sub_24B78F2E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B78F32C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B78F33C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B78F3A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B78F404(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t SubscriptionHandoffState.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B790148();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_24B78F494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B790528();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B78F518(uint64_t a1)
{
  v2 = sub_24B78F708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B78F554(uint64_t a1)
{
  v2 = sub_24B78F708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionHandoffState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F051020, &qword_24B792B00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B78F708();
  sub_24B790588();
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051030, MEMORY[0x277CC9788]);
  sub_24B790518();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_24B78F708()
{
  result = qword_27F051028;
  if (!qword_27F051028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F051028);
  }

  return result;
}

uint64_t SubscriptionHandoffState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_24B790148();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F051038, &qword_24B792B08);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SubscriptionHandoffState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B78F708();
  sub_24B790578();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_24B78FF0C(&qword_27F051040, MEMORY[0x277CC9788]);
    sub_24B7904A8();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_24B78FA30(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SubscriptionHandoffState()
{
  result = qword_27F051050;
  if (!qword_27F051050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B78FA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionHandoffState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B78FAAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F051020, &qword_24B792B00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B78F708();
  sub_24B790588();
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051030, MEMORY[0x277CC9788]);
  sub_24B790518();
  return (*(v3 + 8))(v6, v2);
}

uint64_t SubscriptionHandoffState.hash(into:)()
{
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051048, MEMORY[0x277CC9788]);

  return sub_24B7902F8();
}

uint64_t SubscriptionHandoffState.hashValue.getter()
{
  sub_24B790538();
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051048, MEMORY[0x277CC9788]);
  sub_24B7902F8();
  return sub_24B790568();
}

uint64_t sub_24B78FD34()
{
  sub_24B790538();
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051048, MEMORY[0x277CC9788]);
  sub_24B7902F8();
  return sub_24B790568();
}

uint64_t sub_24B78FDBC()
{
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051048, MEMORY[0x277CC9788]);

  return sub_24B7902F8();
}

uint64_t sub_24B78FE40()
{
  sub_24B790538();
  sub_24B790148();
  sub_24B78FF0C(&qword_27F051048, MEMORY[0x277CC9788]);
  sub_24B7902F8();
  return sub_24B790568();
}

uint64_t sub_24B78FF0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B78FF80()
{
  result = sub_24B790148();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B790000()
{
  result = qword_27F051060;
  if (!qword_27F051060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F051060);
  }

  return result;
}

unint64_t sub_24B790058()
{
  result = qword_27F051068;
  if (!qword_27F051068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F051068);
  }

  return result;
}

unint64_t sub_24B7900B0()
{
  result = qword_27F051070;
  if (!qword_27F051070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F051070);
  }

  return result;
}