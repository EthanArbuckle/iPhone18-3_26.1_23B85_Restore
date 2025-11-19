uint64_t sub_1B8B6EE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BatchEvaluationViewContent() + 24));
  v12 = *v3;
  v13 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v4 = *(v11 + 24);

  v5 = sub_1B8C247F8();
  result = sub_1B8C23D18();
  *a2 = v4;
  *(a2 + 8) = 0x403C000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1B8C27D60;
  *(a2 + 40) = 0;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1B8B6EF9C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BatchController();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  *a1 = sub_1B8C23DA8();
  *(a1 + 8) = v2 & 1;
  v3 = type metadata accessor for DebugSheet();
  v4 = *(v3 + 20);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + *(v3 + 24);
  result = sub_1B8C24D58();
  *v5 = v7;
  *(v5 + 8) = v8;
  return result;
}

uint64_t sub_1B8B6F09C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScoreController();
  sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  result = sub_1B8C23DA8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8B6F118(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  sub_1B8C25368();
  v1[14] = sub_1B8C25358();
  v4 = sub_1B8C25328();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B8B6F1E8, v4, v3);
}

uint64_t sub_1B8B6F1E8()
{
  v1 = v0[12];
  v2 = (v1 + *(type metadata accessor for BatchEvaluationViewContent() + 24));
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v0[18] = v4;
  v0[5] = v3;
  v0[6] = v4;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  v5 = v0[9];
  swift_getKeyPath();
  v0[10] = v5;
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  v0[20] = *(v5 + 16);

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1B8B6F36C;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B6F36C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1B8B6F4B0, v5, v4);
}

uint64_t sub_1B8B6F4B0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  v0[7] = v3;
  v0[8] = v2;
  sub_1B8C24D68();
  v7 = v0[11];
  sub_1B8B6A320(v5);
  v8 = sub_1B8C23E78();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_1B8B4F4B0(v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B8B6F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for BatchEvaluationViewContent() + 24));
  v5 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  sub_1B8B4FA00();
}

uint64_t sub_1B8B6F634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1B8B6F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1B8B6F824@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1B8CC8ED0]();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B6F850(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1B8CC8EE0](v2);
}

uint64_t type metadata accessor for BatchEvaluationViewContent()
{
  result = qword_1EBAA6BB0;
  if (!qword_1EBAA6BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8B6F8C8()
{
  result = qword_1EBAA6AB8;
  if (!qword_1EBAA6AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AA8, &qword_1B8C29E38);
    sub_1B8B34CFC(&qword_1EBAA6AC0, &qword_1EBAA6AA0, &qword_1B8C29E30);
    sub_1B8B70B14(&qword_1EBAA6AC8, type metadata accessor for BatchEvaluationViewContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6AB8);
  }

  return result;
}

uint64_t sub_1B8B6F9B0@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1B8B69DA8(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32), a1);
}

unint64_t sub_1B8B6F9D8()
{
  result = qword_1EBAA6B78;
  if (!qword_1EBAA6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6B78);
  }

  return result;
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1B8B6FA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchEvaluationViewContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B6FAC4()
{
  v2 = *(type metadata accessor for BatchEvaluationViewContent() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B8B5115C;

  return sub_1B8B6F118(v0 + v3);
}

uint64_t sub_1B8B6FB90(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BatchEvaluationViewContent() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B8B6F5B0(a1, a2, v6);
}

unint64_t sub_1B8B6FC10()
{
  result = qword_1EBAA6B88;
  if (!qword_1EBAA6B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B30, &qword_1B8C29F08);
    sub_1B8B6FCCC();
    sub_1B8B70B14(&qword_1EBAA6B98, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6B88);
  }

  return result;
}

unint64_t sub_1B8B6FCCC()
{
  result = qword_1EBAA6B90;
  if (!qword_1EBAA6B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B80, &qword_1B8C2A080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B28, &qword_1B8C29F00);
    type metadata accessor for DebugController();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B20, &qword_1B8C29EF8);
    type metadata accessor for OnboardingController();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B18, &qword_1B8C29EF0);
    type metadata accessor for StateController();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B10, &qword_1B8C29EE8);
    type metadata accessor for ScoreController();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B08, &qword_1B8C29EE0);
    type metadata accessor for DonationController();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B00, &qword_1B8C29ED8);
    type metadata accessor for BatchController();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AF8, &qword_1B8C29ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AF0, &qword_1B8C29EC8);
    type metadata accessor for DebugSheet();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6AE8, &qword_1B8C29EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6B40, &qword_1B8C29F18);
    sub_1B8B34CFC(&qword_1EBAA6B48, &qword_1EBAA6AE8, &qword_1B8C29EC0);
    sub_1B8B34CFC(&qword_1EBAA6B50, &qword_1EBAA6B40, &qword_1B8C29F18);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA6B68, type metadata accessor for DebugSheet);
    swift_getOpaqueTypeConformance2();
    sub_1B8B6F9D8();
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA64D0, type metadata accessor for StateController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA5FE8, &qword_1EBAA5FF0, &qword_1B8C27F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6B90);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8B70254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1B8B7029C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B8B70314()
{
  sub_1B8B70450(319, &qword_1EBAA6BC0, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1B8B70450(319, &qword_1EBAA5DD0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B8B70450(319, &qword_1EBAA6BC8, type metadata accessor for BatchController, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B70450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1B8B704B4()
{
  result = qword_1EBAA6BD0;
  if (!qword_1EBAA6BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6BD8, &unk_1B8C2A1E0);
    sub_1B8B6F8C8();
    sub_1B8B34CFC(&qword_1EBAA6AD0, &qword_1EBAA6AB0, &qword_1B8C29E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6BD0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for BatchEvaluationViewContent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B8C23D38();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1B8C23E78();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[*(v1 + 24)];
  v12 = *v11;

  v13 = *(v11 + 1);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B8B70818(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BatchEvaluationViewContent() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1B8B70894()
{
  result = qword_1EBAA6C50;
  if (!qword_1EBAA6C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6C58, &qword_1B8C2A2D8);
    sub_1B8B7094C();
    sub_1B8B34CFC(&qword_1EBAA6C68, &qword_1EBAA6C70, &qword_1B8C2A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6C50);
  }

  return result;
}

unint64_t sub_1B8B7094C()
{
  result = qword_1EBAA6C60;
  if (!qword_1EBAA6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6C60);
  }

  return result;
}

unint64_t sub_1B8B709A0()
{
  result = qword_1EBAA6CC8;
  if (!qword_1EBAA6CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6CA0, &qword_1B8C2A338);
    sub_1B8B70A2C();
    sub_1B8B70C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CC8);
  }

  return result;
}

unint64_t sub_1B8B70A2C()
{
  result = qword_1EBAA6CD0;
  if (!qword_1EBAA6CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6C98, &qword_1B8C2A330);
    sub_1B8B70B14(&qword_1EBAA6CD8, type metadata accessor for CardStack);
    sub_1B8B70B5C(&qword_1EBAA6CE0, &qword_1EBAA6CE8, &qword_1B8C2A388, sub_1B8B70BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CD0);
  }

  return result;
}

uint64_t sub_1B8B70B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B70B5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8B70BE0()
{
  result = qword_1EBAA6CF0;
  if (!qword_1EBAA6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CF0);
  }

  return result;
}

unint64_t sub_1B8B70C34()
{
  result = qword_1EBAA6CF8;
  if (!qword_1EBAA6CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D00, &qword_1B8C2A390);
    sub_1B8B70B5C(&qword_1EBAA6D08, &qword_1EBAA6D10, &qword_1B8C2A398, sub_1B8B70D18);
    sub_1B8B70B5C(&qword_1EBAA6D20, &qword_1EBAA6D28, &qword_1B8C2A3A0, sub_1B8B70D6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6CF8);
  }

  return result;
}

unint64_t sub_1B8B70D18()
{
  result = qword_1EBAA6D18;
  if (!qword_1EBAA6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6D18);
  }

  return result;
}

unint64_t sub_1B8B70D6C()
{
  result = qword_1EBAA6D30;
  if (!qword_1EBAA6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6D30);
  }

  return result;
}

uint64_t sub_1B8B70DC0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1B8B70DD4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1B8B70DE8()
{
  result = qword_1EBAA6D48;
  if (!qword_1EBAA6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6D48);
  }

  return result;
}

uint64_t sub_1B8B70E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B70EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for EvaluationCard()
{
  result = qword_1EBAA6D60;
  if (!qword_1EBAA6D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B70F7C()
{
  type metadata accessor for BatchInteraction(319);
  if (v0 <= 0x3F)
  {
    sub_1B8B71080(319, &qword_1EBAA5FB8, type metadata accessor for BatchController, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B8B71080(319, &qword_1EBAA6D70, type metadata accessor for FBKEvaluationController, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B71080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B8B71100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8B74EAC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1B8B71164()
{
  sub_1B8B7485C();
  sub_1B8C242B8();
  return v1;
}

uint64_t sub_1B8B711A0@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v70 = sub_1B8C24328();
  v69 = *(v70 - 8);
  v2 = *(v69 + 64);
  v3 = MEMORY[0x1EEE9AC00](v70);
  v67 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v64 - v5;
  v7 = type metadata accessor for EvaluationCard();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v79 = v11;
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D78, &qword_1B8C2A478);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D80, &qword_1B8C2A480);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v75 = v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D88, &unk_1B8C2A488);
  v23 = *(v22 - 8);
  v72 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v71 = v64 - v25;
  v80 = type metadata accessor for EvaluationCard;
  v77 = v1;
  v74 = v12;
  sub_1B8B74958(v1, v12, type metadata accessor for EvaluationCard);
  v78 = *(v9 + 80);
  v26 = (v78 + 16) & ~v78;
  v76 = v26;
  v27 = swift_allocObject();
  sub_1B8B74154(v12, v27 + v26);
  *&v88 = 0x4030000000000000;
  *(&v88 + 1) = sub_1B8B741B8;
  *&v89 = v27;
  v28 = (v1 + *(v8 + 36));
  v30 = *v28;
  v29 = v28[1];
  v66 = v30;
  v65 = v29;
  v84 = v30;
  v85 = v29;
  v64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D90, &qword_1B8C2A498);
  sub_1B8C24D68();
  v31 = v87[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D98, &qword_1B8C2A4A0);
  type metadata accessor for FBKEvaluationController(0);
  sub_1B8B34CFC(&qword_1EBAA6DA0, &qword_1EBAA6D98, &qword_1B8C2A4A0);
  v68 = sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  sub_1B8C24A78();

  v32 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v34 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DA8, &qword_1B8C2A4D8) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  sub_1B8C24318();
  v35 = v69;
  v36 = v70;
  (*(v69 + 16))(v67, v6, v70);
  sub_1B8B74E64(&qword_1EBAA6DB0, MEMORY[0x1E697F400]);
  v37 = v36;
  v38 = sub_1B8C23E58();
  (*(v35 + 8))(v6, v37);
  *&v17[*(v14 + 44)] = v38;
  sub_1B8C24F48();
  sub_1B8C24088();
  v39 = v75;
  sub_1B8B3883C(v17, v75, &qword_1EBAA6D78, &qword_1B8C2A478);
  v40 = (v39 + *(v19 + 44));
  v41 = v93;
  v40[4] = v92;
  v40[5] = v41;
  v40[6] = v94;
  v42 = v89;
  *v40 = v88;
  v40[1] = v42;
  v43 = v91;
  v40[2] = v90;
  v40[3] = v43;
  v87[0] = v66;
  v87[1] = v65;
  sub_1B8C24D88();
  v44 = v84;
  v45 = v85;
  v46 = v86;
  v70 = v86;
  v47 = v74;
  sub_1B8B74958(v77, v74, v80);
  v48 = v76;
  v49 = swift_allocObject();
  sub_1B8B74154(v47, v49 + v48);
  v50 = v71;
  v51 = &v71[*(v72 + 44)];
  v52 = *(type metadata accessor for FBKEvaluationViewModifier() + 20);
  *&v51[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DB8, &unk_1B8C2A510);
  swift_storeEnumTagMultiPayload();
  v84 = v44;
  v85 = v45;
  v86 = v46;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v87, v53);
  v54 = v87[0];
  swift_getKeyPath();
  v81 = v54;
  v82 = sub_1B8B7428C;
  v83 = v49;
  v84 = v54;
  sub_1B8C23578();

  *v51 = v44;
  *(v51 + 1) = v45;
  *(v51 + 2) = v70;
  v55 = v50;
  sub_1B8B3883C(v75, v50, &qword_1EBAA6D80, &qword_1B8C2A480);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC8, &qword_1B8C2A548);
  v57 = v73;
  v58 = (v73 + *(v56 + 36));
  v59 = v58 + *(sub_1B8C23EE8() + 20);
  sub_1B8C25378();
  v60 = v74;
  sub_1B8B74958(v77, v74, v80);
  v61 = v76;
  v62 = swift_allocObject();
  sub_1B8B74154(v60, v62 + v61);
  *v58 = &unk_1B8C2A558;
  v58[1] = v62;
  return sub_1B8B3883C(v55, v57, &qword_1EBAA6D88, &unk_1B8C2A488);
}

uint64_t sub_1B8B719FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for EvaluationCard();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B8B74958(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EvaluationCard);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_1B8B74154(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_1B8B747DC;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B8B71B08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C24468();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DD0, &qword_1B8C2A560);
  sub_1B8B71BB0(a1, a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  sub_1B8C23E88();
  v7 = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DD8, &qword_1B8C2A590);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  return result;
}

uint64_t sub_1B8B71BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DE8, &qword_1B8C2A598);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v139 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v137 = (v117 - v7);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DF0, &qword_1B8C2A5A0);
  v8 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v126 = v117 - v9;
  v127 = sub_1B8C24EA8();
  v130 = *(v127 - 8);
  v10 = v130[8];
  v11 = MEMORY[0x1EEE9AC00](v127);
  v125 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v141 = v117 - v13;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DF8, &qword_1B8C2A5A8);
  v14 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v133 = v117 - v15;
  v16 = type metadata accessor for Previewer();
  v17 = *(*(v16 - 1) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v123 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = v117 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v129 = v117 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v117 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v140 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v142 = v117 - v30;
  v31 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E00, &qword_1B8C2A5B8);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v136 = v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v145 = v117 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E08, &qword_1B8C2A5C0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v144 = v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = v117 - v44;
  *v45 = sub_1B8C242D8();
  *(v45 + 1) = 0x4020000000000000;
  v45[16] = 0;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E10, &qword_1B8C2A5C8) + 44);
  v143 = v45;
  sub_1B8B72B4C(a1, &v45[v46]);
  v135 = sub_1B8C242E8();
  v153 = 1;
  sub_1B8B72E50(&v148);
  v156 = *&v149[16];
  v157 = *&v149[32];
  v158 = *&v149[48];
  v159 = v149[64];
  v154 = v148;
  v155 = *v149;
  v161 = v149[64];
  v160[2] = *&v149[16];
  v160[3] = *&v149[32];
  v160[4] = *&v149[48];
  v160[0] = v148;
  v160[1] = *v149;
  sub_1B8B34450(&v154, &v146, &qword_1EBAA6E18, &qword_1B8C2A5D0);
  sub_1B8B3433C(v160, &qword_1EBAA6E18, &qword_1B8C2A5D0);
  *&v152[39] = v156;
  *&v152[55] = v157;
  *&v152[71] = v158;
  v152[87] = v159;
  *&v152[7] = v154;
  *&v152[23] = v155;
  v134 = v153;
  v47 = type metadata accessor for BatchInteraction(0);
  sub_1B8B74958(a1 + *(v47 + 28), v34, type metadata accessor for BatchInteraction.ContentPolarity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
    v49 = v142;
    sub_1B8B46178(v34, v142);
    sub_1B8B46178(&v34[v48], v140);
    v120 = type metadata accessor for BatchInteraction;
    sub_1B8B74958(a1, v25, type metadata accessor for BatchInteraction);
    sub_1B8B34450(v49, &v25[v16[5]], &qword_1EBAA6008, &qword_1B8C2A5B0);
    v50 = type metadata accessor for FullScreenPreviewController(0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    v53 = swift_allocObject();
    v54 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content;
    v55 = type metadata accessor for FullScreenPreviewController.Content(0);
    v128 = a1;
    v56 = v55;
    v57 = *(v55 - 8);
    v58 = *(v57 + 56);
    v118 = v58;
    v119 = v57 + 56;
    v58(v53 + v54, 1, 1, v55);
    v58(v53 + v54, 1, 1, v56);
    v59 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
    v60 = sub_1B8C23498();
    v61 = *(v60 - 8);
    v62 = *(v61 + 56);
    v117[0] = v62;
    v117[1] = v61 + 56;
    v62(v53 + v59, 1, 1, v60);
    v62(v53 + v59, 1, 1, v60);
    sub_1B8C235B8();
    v63 = v16[6];
    v122 = v25;
    v25[v63] = 1;
    v64 = &v25[v16[7]];
    *&v146 = v53;
    sub_1B8C24D58();
    v65 = *(&v148 + 1);
    *v64 = v148;
    *(v64 + 1) = v65;
    sub_1B8C24E98();
    v66 = v129;
    sub_1B8B74958(v128, v129, v120);
    sub_1B8B34450(v140, v66 + v16[5], &qword_1EBAA6008, &qword_1B8C2A5B0);
    v67 = *(v50 + 48);
    v68 = *(v50 + 52);
    v69 = swift_allocObject();
    v70 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content;
    v71 = v118;
    v118(v69 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content, 1, 1, v56);
    v71(v69 + v70, 1, 1, v56);
    v72 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
    v73 = v117[0];
    (v117[0])(v69 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL, 1, 1, v60);
    v73(v69 + v72, 1, 1, v60);
    sub_1B8C235B8();
    v121 = v16;
    v74 = v66;
    *(v66 + v16[6]) = 0;
    v75 = (v66 + v16[7]);
    *&v146 = v69;
    sub_1B8C24D58();
    v76 = *(&v148 + 1);
    *v75 = v148;
    v75[1] = v76;
    v77 = v124;
    sub_1B8B74958(v122, v124, type metadata accessor for Previewer);
    v78 = v130[2];
    v79 = v125;
    v80 = v127;
    v78(v125, v141, v127);
    v81 = v123;
    sub_1B8B74958(v74, v123, type metadata accessor for Previewer);
    v82 = v126;
    sub_1B8B74958(v77, v126, type metadata accessor for Previewer);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E20, &qword_1B8C2A5D8);
    v78((v82 + *(v83 + 48)), v79, v80);
    sub_1B8B74958(v81, v82 + *(v83 + 64), type metadata accessor for Previewer);
    sub_1B8B749C0(v81, type metadata accessor for Previewer);
    v84 = v130[1];
    v84(v79, v80);
    sub_1B8B749C0(v77, type metadata accessor for Previewer);
    sub_1B8B34450(v82, v133, &qword_1EBAA6DF0, &qword_1B8C2A5A0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B74E64(&qword_1EBAA6E28, type metadata accessor for Previewer);
    sub_1B8B34CFC(&qword_1EBAA6E30, &qword_1EBAA6DF0, &qword_1B8C2A5A0);
    a1 = v128;
    sub_1B8C24598();
    sub_1B8B3433C(v82, &qword_1EBAA6DF0, &qword_1B8C2A5A0);
    sub_1B8B749C0(v129, type metadata accessor for Previewer);
    v84(v141, v80);
    sub_1B8B749C0(v122, type metadata accessor for Previewer);
    sub_1B8B3433C(v140, &qword_1EBAA6008, &qword_1B8C2A5B0);
  }

  else
  {
    v85 = v142;
    sub_1B8B46178(v34, v142);
    sub_1B8B74958(a1, v25, type metadata accessor for BatchInteraction);
    sub_1B8B34450(v85, &v25[v16[5]], &qword_1EBAA6008, &qword_1B8C2A5B0);
    v86 = type metadata accessor for FullScreenPreviewController(0);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    v89 = swift_allocObject();
    v90 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content;
    v91 = type metadata accessor for FullScreenPreviewController.Content(0);
    v92 = v16;
    v93 = *(*(v91 - 8) + 56);
    v93(v89 + v90, 1, 1, v91);
    v93(v89 + v90, 1, 1, v91);
    v94 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
    v95 = sub_1B8C23498();
    v96 = *(*(v95 - 8) + 56);
    v96(v89 + v94, 1, 1, v95);
    v96(v89 + v94, 1, 1, v95);
    sub_1B8C235B8();
    v25[v92[6]] = 2;
    v97 = &v25[v92[7]];
    *&v146 = v89;
    sub_1B8C24D58();
    v98 = *(&v148 + 1);
    *v97 = v148;
    *(v97 + 1) = v98;
    sub_1B8B74958(v25, v133, type metadata accessor for Previewer);
    swift_storeEnumTagMultiPayload();
    sub_1B8B74E64(&qword_1EBAA6E28, type metadata accessor for Previewer);
    sub_1B8B34CFC(&qword_1EBAA6E30, &qword_1EBAA6DF0, &qword_1B8C2A5A0);
    sub_1B8C24598();
    sub_1B8B749C0(v25, type metadata accessor for Previewer);
  }

  sub_1B8B3433C(v142, &qword_1EBAA6008, &qword_1B8C2A5B0);
  v99 = sub_1B8C242E8();
  v100 = v137;
  *v137 = v99;
  *(v100 + 8) = 0x4020000000000000;
  *(v100 + 16) = 0;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E38, &qword_1B8C2A5E0);
  sub_1B8B73018(a1, v100 + *(v101 + 44));
  v102 = v144;
  sub_1B8B34450(v143, v144, &qword_1EBAA6E08, &qword_1B8C2A5C0);
  v103 = v136;
  sub_1B8B34450(v145, v136, &qword_1EBAA6E00, &qword_1B8C2A5B8);
  v104 = v139;
  sub_1B8B34450(v100, v139, &qword_1EBAA6DE8, &qword_1B8C2A598);
  v105 = v102;
  v106 = v138;
  sub_1B8B34450(v105, v138, &qword_1EBAA6E08, &qword_1B8C2A5C0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E40, &qword_1B8C2A5E8);
  v108 = v107[12];
  *(&v147[1] + 1) = *&v152[16];
  *(&v147[3] + 1) = *&v152[48];
  v109 = (v106 + v108);
  v110 = v135;
  v146 = v135;
  v111 = v134;
  LOBYTE(v147[0]) = v134;
  *(&v147[2] + 1) = *&v152[32];
  *(&v147[5] + 1) = *&v152[80];
  *(&v147[4] + 1) = *&v152[64];
  *(v147 + 1) = *v152;
  BYTE9(v147[5]) = 0;
  v112 = v147[4];
  v109[4] = v147[3];
  v109[5] = v112;
  *(v109 + 90) = *(&v147[4] + 10);
  v113 = v147[0];
  *v109 = v146;
  v109[1] = v113;
  v114 = v147[2];
  v109[2] = v147[1];
  v109[3] = v114;
  sub_1B8B34450(v103, v106 + v107[16], &qword_1EBAA6E00, &qword_1B8C2A5B8);
  v115 = v106 + v107[20];
  *v115 = 0;
  *(v115 + 8) = 1;
  sub_1B8B34450(v104, v106 + v107[24], &qword_1EBAA6DE8, &qword_1B8C2A598);
  sub_1B8B34450(&v146, &v148, &qword_1EBAA6E48, &qword_1B8C2A5F0);
  sub_1B8B3433C(v100, &qword_1EBAA6DE8, &qword_1B8C2A598);
  sub_1B8B3433C(v145, &qword_1EBAA6E00, &qword_1B8C2A5B8);
  sub_1B8B3433C(v143, &qword_1EBAA6E08, &qword_1B8C2A5C0);
  sub_1B8B3433C(v104, &qword_1EBAA6DE8, &qword_1B8C2A598);
  sub_1B8B3433C(v103, &qword_1EBAA6E00, &qword_1B8C2A5B8);
  *&v149[33] = *&v152[32];
  *&v149[49] = *&v152[48];
  *&v149[65] = *&v152[64];
  *&v149[1] = *v152;
  v148 = v110;
  v149[0] = v111;
  v150 = *&v152[80];
  *&v149[17] = *&v152[16];
  v151 = 0;
  sub_1B8B3433C(&v148, &qword_1EBAA6E48, &qword_1B8C2A5F0);
  return sub_1B8B3433C(v144, &qword_1EBAA6E08, &qword_1B8C2A5C0);
}

uint64_t sub_1B8B72B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SkipButton();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E78, &qword_1B8C2A6C8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  sub_1B8B74958(a1, &v27 - v18, type metadata accessor for BatchInteraction);
  v19[*(v13 + 44)] = 0;
  sub_1B8B74958(a1, &v11[*(v5 + 32)], type metadata accessor for BatchInteraction);
  type metadata accessor for BatchController();
  sub_1B8B74E64(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  v20 = sub_1B8C23DA8();
  LOBYTE(a1) = v21;
  type metadata accessor for FBKEvaluationController(0);
  sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
  v22 = sub_1B8C23DA8();
  *v11 = v20;
  v11[8] = a1 & 1;
  *(v11 + 2) = v22;
  v11[24] = v23 & 1;
  sub_1B8B34450(v19, v17, &qword_1EBAA6E78, &qword_1B8C2A6C8);
  sub_1B8B74958(v11, v9, type metadata accessor for SkipButton);
  sub_1B8B34450(v17, a2, &qword_1EBAA6E78, &qword_1B8C2A6C8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E80, &unk_1B8C2A6D0);
  v25 = a2 + *(v24 + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_1B8B74958(v9, a2 + *(v24 + 64), type metadata accessor for SkipButton);
  sub_1B8B749C0(v11, type metadata accessor for SkipButton);
  sub_1B8B3433C(v19, &qword_1EBAA6E78, &qword_1B8C2A6C8);
  sub_1B8B749C0(v9, type metadata accessor for SkipButton);
  return sub_1B8B3433C(v17, &qword_1EBAA6E78, &qword_1B8C2A6C8);
}

uint64_t sub_1B8B72E50@<X0>(uint64_t a1@<X8>)
{
  sub_1B8B68488();
  sub_1B8B34CA8();
  v2 = sub_1B8C249E8();
  v4 = v3;
  v6 = v5;
  sub_1B8C24938();
  v7 = sub_1B8C249B8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1B8B34060(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  *&v24 = v7;
  *(&v24 + 1) = v9;
  LOBYTE(v25) = v11 & 1;
  v16 = *v23;
  *(&v25 + 1) = *v23;
  DWORD1(v25) = *&v23[3];
  *(&v25 + 1) = v13;
  v26 = KeyPath;
  LOBYTE(v27) = 1;
  DWORD1(v27) = *&v22[3];
  v17 = *v22;
  *(&v27 + 1) = *v22;
  *(&v27 + 1) = v15;
  v28 = 0x3FE0000000000000;
  v18 = v27;
  *(a1 + 32) = KeyPath;
  *(a1 + 48) = v18;
  v19 = v25;
  *a1 = v24;
  *(a1 + 16) = v19;
  *(a1 + 64) = 0x3FE0000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v21[72] = 1;
  v29[0] = v7;
  v29[1] = v9;
  v30 = v11 & 1;
  *&v31[3] = *&v23[3];
  *v31 = v16;
  v32 = v13;
  v33 = KeyPath;
  v34 = 0;
  v35 = 1;
  *&v36[3] = *&v22[3];
  *v36 = v17;
  v37 = v15;
  v38 = 0x3FE0000000000000;
  sub_1B8B34450(&v24, v21, &qword_1EBAA6E70, &qword_1B8C2A6C0);
  return sub_1B8B3433C(v29, &qword_1EBAA6E70, &qword_1B8C2A6C0);
}

uint64_t sub_1B8B73018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E50, &qword_1B8C2A5F8);
  v3 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v68 = v58 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E58, &qword_1B8C2A600);
  v5 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v58 - v6;
  v59 = type metadata accessor for ActionButton();
  v7 = *(*(v59 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v62 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = v58 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v64 = v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v63 = v58 - v14;
  v15 = sub_1B8C242A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for EvaluationCard() + 24);
  v60 = a1;
  v21 = (a1 + v20);
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    sub_1B8C25488();
    v24 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v16 + 8))(v19, v15);
    v22 = v70;
  }

  swift_getKeyPath();
  v70 = v22;
  v25 = sub_1B8B74E64(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v26 = *(v22 + 40);

  swift_getKeyPath();
  v70 = v26;
  sub_1B8B74E64(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v29 = *(v26 + 32);
  v30 = *(v26 + 40);
  v32 = *(v26 + 48);
  v31 = *(v26 + 56);
  v33 = *(v26 + 64);
  v34 = *(v26 + 72);
  sub_1B8B748B0(v27, v28);

  if (v28 == 1)
  {
    v58[1] = v25;
    v35 = v59;
    v36 = v60;
    v37 = v63;
    sub_1B8B74958(v60, &v63[*(v59 + 20)], type metadata accessor for BatchInteraction);
    type metadata accessor for BatchController();
    v38 = sub_1B8C23DA8();
    v40 = v39;
    type metadata accessor for FBKEvaluationController(0);
    sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    v41 = sub_1B8C23DA8();
    *v37 = 0;
    v42 = &v37[v35[6]];
    *v42 = v38;
    v42[8] = v40 & 1;
    v43 = &v37[v35[7]];
    *v43 = v41;
    v43[8] = v44 & 1;
    v45 = v64;
    sub_1B8B74958(v36, &v64[v35[5]], type metadata accessor for BatchInteraction);
    v46 = sub_1B8C23DA8();
    v48 = v47;
    v49 = sub_1B8C23DA8();
    *v45 = 1;
    v50 = &v45[v35[6]];
    *v50 = v46;
    v50[8] = v48 & 1;
    v51 = &v45[v35[7]];
    *v51 = v49;
    v51[8] = v52 & 1;
    v53 = v61;
    sub_1B8B74958(v37, v61, type metadata accessor for ActionButton);
    v54 = v62;
    sub_1B8B74958(v45, v62, type metadata accessor for ActionButton);
    v55 = v65;
    sub_1B8B74958(v53, v65, type metadata accessor for ActionButton);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6E68, &qword_1B8C2A658);
    sub_1B8B74958(v54, v55 + *(v56 + 48), type metadata accessor for ActionButton);
    sub_1B8B749C0(v54, type metadata accessor for ActionButton);
    sub_1B8B749C0(v53, type metadata accessor for ActionButton);
    sub_1B8B34450(v55, v68, &qword_1EBAA6E58, &qword_1B8C2A600);
    swift_storeEnumTagMultiPayload();
    sub_1B8B34CFC(&qword_1EBAA6E60, &qword_1EBAA6E58, &qword_1B8C2A600);
    sub_1B8C24598();
    sub_1B8B3433C(v55, &qword_1EBAA6E58, &qword_1B8C2A600);
    sub_1B8B749C0(v45, type metadata accessor for ActionButton);
    return sub_1B8B749C0(v37, type metadata accessor for ActionButton);
  }

  else
  {
    sub_1B8B74904(v27, v28);
    swift_storeEnumTagMultiPayload();
    sub_1B8B34CFC(&qword_1EBAA6E60, &qword_1EBAA6E58, &qword_1B8C2A600);
    return sub_1B8C24598();
  }
}

double sub_1B8B7374C@<D0>(double *a1@<X8>)
{
  sub_1B8B7485C();
  sub_1B8C242B8();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1B8B7379C(uint64_t *a1)
{
  v2 = *a1;
  sub_1B8B7485C();
  return sub_1B8C242C8();
}

void sub_1B8B737E8(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EvaluationCard();
  v12 = (a3 + *(v11 + 24));
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_1B8C25488();
    v15 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v16 = (a3 + *(v11 + 28));
  v18 = *v16;
  v17 = v16[1];
  v20[2] = v18;
  v20[3] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D90, &qword_1B8C2A498);
  sub_1B8C24D68();
  v19 = v20[1];
  sub_1B8B509C0(a1, a2 & 1);
}

uint64_t sub_1B8B739A4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for EvaluationCard();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  sub_1B8C25368();
  v1[6] = sub_1B8C25358();
  v5 = sub_1B8C25328();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B8B73A78, v5, v4);
}

uint64_t sub_1B8B73A78()
{
  v25 = v0;
  v1 = v0[2];
  if (*(v1 + *(v0[3] + 20)) == 1)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v2 = v0[5];
    v3 = sub_1B8C23C38();
    v0[9] = __swift_project_value_buffer(v3, qword_1EBAB3A30);
    sub_1B8B74958(v1, v2, type metadata accessor for EvaluationCard);
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25468();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      sub_1B8C23568();
      sub_1B8B74E64(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
      v10 = sub_1B8C259E8();
      v12 = v11;
      sub_1B8B749C0(v7, type metadata accessor for EvaluationCard);
      v13 = sub_1B8B5DD48(v10, v12, &v24);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1B8B22000, v4, v5, "Will mark interaction %s as presented", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    else
    {

      sub_1B8B749C0(v7, type metadata accessor for EvaluationCard);
    }

    v19 = v0[2];
    v20 = *(v19 + *(type metadata accessor for BatchInteraction(0) + 20));
    v21 = *(MEMORY[0x1E699C620] + 4);
    v23 = (*MEMORY[0x1E699C620] + MEMORY[0x1E699C620]);
    v22 = swift_task_alloc();
    v0[10] = v22;
    *v22 = v0;
    v22[1] = sub_1B8B73D7C;

    return v23();
  }

  else
  {
    v14 = v0[6];

    v16 = v0[4];
    v15 = v0[5];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1B8B73D7C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1B8B73F28;
  }

  else
  {
    v7 = sub_1B8B73EB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B8B73EB8()
{
  v1 = v0[6];

  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8B73F28()
{
  v21 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  sub_1B8B74958(v4, v3, type metadata accessor for EvaluationCard);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25478();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  v9 = v0[4];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_1B8C23568();
    sub_1B8B74E64(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
    v12 = sub_1B8C259E8();
    v14 = v13;
    sub_1B8B749C0(v9, type metadata accessor for EvaluationCard);
    v15 = sub_1B8B5DD48(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B8B22000, v5, v6, "Failed to mark interaction %s as presented", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
  }

  else
  {

    sub_1B8B749C0(v9, type metadata accessor for EvaluationCard);
  }

  v17 = v0[4];
  v16 = v0[5];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B8B74154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EvaluationCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B741B8@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(type metadata accessor for EvaluationCard() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B719FC(v4, a1);
}

uint64_t sub_1B8B74228@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B8C24258();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B8B7425C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1B8C24268();
}

void sub_1B8B7428C(void *a1, char a2)
{
  v5 = *(type metadata accessor for EvaluationCard() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1B8B737E8(a1, a2 & 1, v6);
}

uint64_t sub_1B8B7432C()
{
  v2 = *(type metadata accessor for EvaluationCard() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B8B5115C;

  return sub_1B8B739A4(v0 + v3);
}

uint64_t sub_1B8B743F8@<X0>(void *a1@<X8>)
{
  result = sub_1B8C24168();
  *a1 = v3;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for EvaluationCard();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v25 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for BatchInteraction(0);

  v7 = *(v0 + v3 + v6[6]);

  v8 = v0 + v3 + v6[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  if (EnumCaseMultiPayload != 1)
  {
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          v22 = *(v8 + 16);

          break;
        case 4:
          v23 = sub_1B8C23328();
          (*(*(v23 - 8) + 8))(v8, v23);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
      v17 = *(v8 + 8);
    }

    else if (v14 == 2)
    {
    }
  }

  v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v11(v8, 1, v10))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          v16 = *(v8 + 16);

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v8, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
      v15 = *(v8 + 8);
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:
  v19 = *(v4 + *(v1 + 24));

  v20 = v4 + *(v1 + 28);

  v21 = *(v20 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v25, v2 | 7);
}

uint64_t sub_1B8B747DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EvaluationCard() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B71B08(v4, a1);
}

unint64_t sub_1B8B7485C()
{
  result = qword_1EBAA6DE0;
  if (!qword_1EBAA6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6DE0);
  }

  return result;
}

uint64_t sub_1B8B748B0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1B8B74904(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1B8B74958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B749C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8B74A30()
{
  result = qword_1EBAA6E88;
  if (!qword_1EBAA6E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6DC8, &qword_1B8C2A548);
    sub_1B8B74AEC();
    sub_1B8B74E64(&qword_1EBAA6B98, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6E88);
  }

  return result;
}

unint64_t sub_1B8B74AEC()
{
  result = qword_1EBAA6E90;
  if (!qword_1EBAA6E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D88, &unk_1B8C2A488);
    sub_1B8B74BA8();
    sub_1B8B74E64(&qword_1EDC85630, type metadata accessor for FBKEvaluationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6E90);
  }

  return result;
}

unint64_t sub_1B8B74BA8()
{
  result = qword_1EBAA6E98;
  if (!qword_1EBAA6E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D80, &qword_1B8C2A480);
    sub_1B8B74C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6E98);
  }

  return result;
}

unint64_t sub_1B8B74C34()
{
  result = qword_1EBAA6EA0;
  if (!qword_1EBAA6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D78, &qword_1B8C2A478);
    sub_1B8B74CEC();
    sub_1B8B34CFC(&qword_1EBAA6EC0, &qword_1EBAA6EC8, &qword_1B8C2A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EA0);
  }

  return result;
}

unint64_t sub_1B8B74CEC()
{
  result = qword_1EBAA6EA8;
  if (!qword_1EBAA6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6DA8, &qword_1B8C2A4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6D98, &qword_1B8C2A4A0);
    type metadata accessor for FBKEvaluationController(255);
    sub_1B8B34CFC(&qword_1EBAA6DA0, &qword_1EBAA6D98, &qword_1B8C2A4A0);
    sub_1B8B74E64(&qword_1EDC85660, type metadata accessor for FBKEvaluationController);
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA6EB0, &qword_1EBAA6EB8, &qword_1B8C2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EA8);
  }

  return result;
}

uint64_t sub_1B8B74E64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8B74EAC()
{
  result = qword_1EBAA6ED0;
  if (!qword_1EBAA6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6ED0);
  }

  return result;
}

uint64_t sub_1B8B74F00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B8B74F48(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_1B8B74FC4@<X0>(char *a1@<X8>)
{
  v89 = *v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v86 = v3;
  v87 = *(v1 + 8);
  v88 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v85 = *(v1 + 56);
  v7 = *(v4 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 0x1E696A000uLL;
  v10 = &off_1E7EB6000;
  v91 = v6;
  v92 = v2;
  if (!v7)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v25 = *(v5 + 16);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_20:
    v36 = v87;
    v37 = v88;
    v41 = &unk_1B8C2A000;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v11 = [objc_opt_self() mainBundle];
  v12 = sub_1B8C23348();
  v83 = v13;

  sub_1B8C1404C(0, v7, 0);
  v14 = (v4 + 40);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);

    if (v18 >= v17 >> 1)
    {
      sub_1B8C1404C((v17 > 1), v18 + 1, 1);
    }

    *(v8 + 16) = v18 + 1;
    v19 = v8 + 32 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    v14 += 2;
    --v7;
  }

  while (v7);
  v20 = sub_1B8B5D414(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = v20;
  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1B8B5D414((v22 > 1), v23 + 1, 1, v20);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[24 * v23];
  *(v24 + 4) = v12;
  *(v24 + 5) = v83;
  *(v24 + 6) = v8;
  v6 = v91;
  v2 = v92;
  v10 = &off_1E7EB6000;
  v9 = 0x1E696A000uLL;
  v8 = MEMORY[0x1E69E7CC0];
  v25 = *(v5 + 16);
  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_9:
  v26 = [objc_opt_self() mainBundle];
  v27 = sub_1B8C23348();
  v84 = v28;

  sub_1B8C1404C(0, v25, 0);
  v29 = v8;
  v30 = (v5 + 40);
  do
  {
    v31 = *(v30 - 1);
    v32 = *v30;
    v34 = *(v29 + 16);
    v33 = *(v29 + 24);

    if (v34 >= v33 >> 1)
    {
      sub_1B8C1404C((v33 > 1), v34 + 1, 1);
    }

    *(v29 + 16) = v34 + 1;
    v35 = v29 + 32 * v34;
    *(v35 + 32) = v31;
    *(v35 + 40) = v32;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    v30 += 2;
    --v25;
  }

  while (v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1B8B5D414(0, *(v21 + 2) + 1, 1, v21);
  }

  v36 = v87;
  v37 = v88;
  v39 = *(v21 + 2);
  v38 = *(v21 + 3);
  if (v39 >= v38 >> 1)
  {
    v21 = sub_1B8B5D414((v38 > 1), v39 + 1, 1, v21);
  }

  v10 = &off_1E7EB6000;
  *(v21 + 2) = v39 + 1;
  v40 = &v21[24 * v39];
  *(v40 + 4) = v27;
  *(v40 + 5) = v84;
  *(v40 + 6) = v29;
  v6 = v91;
  v2 = v92;
  v9 = 0x1E696A000;
  v41 = &unk_1B8C2A000;
  if (v91)
  {
LABEL_21:
    v42 = *(v9 + 2792);
    v43 = objc_opt_self();

    v44 = v6;
    v45 = [v43 v10[330]];
    v46 = sub_1B8C23348();
    v48 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v49 = swift_allocObject();
    *(v49 + 16) = v41[116];
    *(v49 + 32) = v85;
    *(v49 + 40) = v44;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1B8B5D414(0, *(v21 + 2) + 1, 1, v21);
    }

    v51 = *(v21 + 2);
    v50 = *(v21 + 3);
    if (v51 >= v50 >> 1)
    {
      v21 = sub_1B8B5D414((v50 > 1), v51 + 1, 1, v21);
    }

    *(v21 + 2) = v51 + 1;
    v52 = &v21[24 * v51];
    *(v52 + 4) = v46;
    *(v52 + 5) = v48;
    *(v52 + 6) = v49;
    v10 = &off_1E7EB6000;
    v9 = 0x1E696A000uLL;
  }

LABEL_26:
  if (v36)
  {
    v53 = *(v9 + 2792);
    v54 = objc_opt_self();
    v55 = v36;
    v56 = [v54 v10[330]];
    v57 = sub_1B8C23348();
    v59 = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v60 = swift_allocObject();
    *(v60 + 16) = v41[116];
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 32) = v36;
    *(v60 + 56) = 2;
    v61 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1B8B5D414(0, *(v21 + 2) + 1, 1, v21);
    }

    v63 = *(v21 + 2);
    v62 = *(v21 + 3);
    if (v63 >= v62 >> 1)
    {
      v21 = sub_1B8B5D414((v62 > 1), v63 + 1, 1, v21);
    }

    *(v21 + 2) = v63 + 1;
    v64 = &v21[24 * v63];
    *(v64 + 4) = v57;
    *(v64 + 5) = v59;
    *(v64 + 6) = v60;
    v10 = &off_1E7EB6000;
    v9 = 0x1E696A000uLL;
  }

  if (v2)
  {
    v65 = *(v9 + 2792);
    v66 = objc_opt_self();

    v67 = v10[330];
    v68 = v2;
    v69 = [v66 v67];
    v70 = sub_1B8C23348();
    v72 = v71;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v73 = swift_allocObject();
    *(v73 + 16) = v41[116];
    *(v73 + 32) = v2;
    *(v73 + 40) = v86;
    *(v73 + 48) = v37;
    *(v73 + 56) = 2;
    v74 = v68;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1B8B5D414(0, *(v21 + 2) + 1, 1, v21);
    }

    v76 = *(v21 + 2);
    v75 = *(v21 + 3);
    if (v76 >= v75 >> 1)
    {
      v21 = sub_1B8B5D414((v75 > 1), v76 + 1, 1, v21);
    }

    *(v21 + 2) = v76 + 1;
    v77 = &v21[24 * v76];
    *(v77 + 4) = v70;
    *(v77 + 5) = v72;
    *(v77 + 6) = v73;
  }

  v78 = type metadata accessor for ListPreviewer.Content(0);
  v79 = *(v78 + 20);
  v80 = *MEMORY[0x1E699C2C8];
  v81 = sub_1B8C237B8();
  (*(*(v81 - 8) + 104))(&a1[v79], v80, v81);
  *a1 = v89;
  *&a1[*(v78 + 24)] = v21;

  return v89;
}

uint64_t sub_1B8B757C0@<X0>(char *a1@<X8>)
{
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(v1 + 8);
  v10 = *v1;
  v11 = v1[1];
  sub_1B8B74FC4(a1);
  v3 = type metadata accessor for ListPreviewer(0);
  v4 = &a1[*(v3 + 20)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8B758B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  *v4 = sub_1B8C23DA8();
  v4[8] = v5 & 1;
  v6 = &a1[*(v3 + 24)];
  result = sub_1B8C24D58();
  *v6 = v8;
  *(v6 + 1) = v9;
  return result;
}

uint64_t sub_1B8B758B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FBKSInteraction.Content.AttachmentResult.append(error:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B8B5D2B8(0, v5[2] + 1, 1, v5);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B8B5D2B8((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v5[v7 + 4] = a1;
  v2[1] = v5;
  *a2 = *v2;
  a2[1] = v5;
  v8 = a1;
}

uint64_t sub_1B8B759CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 224) = a1;
  v8 = sub_1B8C23498();
  *(v6 + 264) = v8;
  v9 = *(v8 - 8);
  *(v6 + 272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v11 = sub_1B8C237E8();
  *(v6 + 304) = v11;
  v12 = *(v11 - 8);
  *(v6 + 312) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v14 = sub_1B8C23938();
  *(v6 + 336) = v14;
  v15 = *(v14 - 8);
  *(v6 + 344) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 720) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B8B75BDC, 0, 0);
}

uint64_t sub_1B8B75BDC()
{
  v123 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 144) = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 232);
  *(v0 + 152) = v1;
  v3 = [objc_opt_self() defaultManager];
  sub_1B8C23468();
  v4 = sub_1B8C250F8();

  LODWORD(v2) = [v3 fileExistsAtPath_];

  if (v2)
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 336);
    v7 = *(v0 + 344);
    (*(v7 + 16))(v5, *(v0 + 256), v6);
    v8 = (*(v7 + 88))(v5, v6);
    if (v8 == *MEMORY[0x1E699C608])
    {
      v9 = *(v0 + 720);
      v10 = *(v0 + 408);
      v11 = *(v0 + 416);
      v12 = *(v0 + 336);
      v13 = *(v0 + 344);
      (*(v13 + 96))(v11, v12);
      v14 = *v11;
      *(v0 + 424) = *v11;
      v15 = v11[1];
      *(v0 + 432) = v15;
      *(v0 + 440) = v11[2];
      *(v0 + 448) = v11[3];
      *v10 = v14;
      v10[1] = v15;
      v16 = *MEMORY[0x1E699C5F0];
      v17 = *(v13 + 104);
      *(v0 + 456) = v17;
      *(v0 + 464) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v17(v10, v16, v12);
      *(v0 + 717) = v9;
      sub_1B8B7B54C(v14, v15);
      v18 = swift_task_alloc();
      *(v0 + 472) = v18;
      *v18 = v0;
      v18[1] = sub_1B8B765EC;
      v19 = *(v0 + 408);
      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      v22 = *(v0 + 232);
      v23 = v0 + 80;
      v24 = v0 + 717;
LABEL_21:

      return sub_1B8B759CC(v23, v22, v20, v24, v21);
    }

    if (v8 == *MEMORY[0x1E699C578])
    {
      v42 = *(v0 + 720);
      v43 = *(v0 + 416);
      v44 = *(v0 + 392);
      v45 = *(v0 + 336);
      v46 = *(v0 + 344);
      (*(v46 + 96))(v43, v45);
      v47 = *v43;
      *(v0 + 504) = *v43;
      v48 = v43[1];
      *(v0 + 512) = v48;
      *(v0 + 520) = v43[2];
      *(v0 + 528) = v43[3];
      *v44 = v47;
      v44[1] = v48;
      v49 = *MEMORY[0x1E699C600];
      v50 = *(v46 + 104);
      *(v0 + 536) = v50;
      *(v0 + 544) = (v46 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v50(v44, v49, v45);
      *(v0 + 714) = v42;
      sub_1B8B7B54C(v47, v48);
      v51 = swift_task_alloc();
      *(v0 + 552) = v51;
      *v51 = v0;
      v51[1] = sub_1B8B76E38;
      v52 = *(v0 + 392);
      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      v22 = *(v0 + 232);
      v23 = v0 + 112;
      v24 = v0 + 714;
      goto LABEL_21;
    }

    if (v8 == *MEMORY[0x1E699C5A8])
    {
      v120 = *(v0 + 720);
      v71 = *(v0 + 416);
      v72 = *(v0 + 376);
      v73 = *(v0 + 336);
      v74 = *(v0 + 344);
      v75 = *(v0 + 328);
      v76 = *(v0 + 304);
      v77 = *(v0 + 312);
      (*(v74 + 96))(v71, v73);
      v78 = *v71;
      *(v0 + 584) = *v71;
      v79 = v71[1];
      *(v0 + 592) = v79;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6EF0, &qword_1B8C2A868);
      (*(v77 + 32))(v75, v71 + *(v80 + 48), v76);
      *v72 = v78;
      v72[1] = v79;
      v81 = *MEMORY[0x1E699C5F0];
      v82 = *(v74 + 104);
      *(v0 + 600) = v82;
      *(v0 + 608) = (v74 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v82(v72, v81, v73);
      *(v0 + 713) = v120;
      sub_1B8B7B54C(v78, v79);
      v83 = swift_task_alloc();
      *(v0 + 616) = v83;
      *v83 = v0;
      v83[1] = sub_1B8B77694;
      v84 = *(v0 + 376);
      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      v22 = *(v0 + 232);
      v23 = v0 + 128;
      v24 = v0 + 713;
      goto LABEL_21;
    }

    if (v8 == *MEMORY[0x1E699C5B0])
    {
      v121 = *(v0 + 720);
      v85 = *(v0 + 416);
      v86 = *(v0 + 360);
      v87 = *(v0 + 336);
      v88 = *(v0 + 344);
      v90 = *(v0 + 312);
      v89 = *(v0 + 320);
      v91 = *(v0 + 304);
      (*(v88 + 96))(v85, v87);
      v92 = *v85;
      *(v0 + 648) = *v85;
      v93 = v85[1];
      *(v0 + 656) = v93;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6EE8, &qword_1B8C2A860);
      (*(v90 + 32))(v89, v85 + *(v94 + 48), v91);
      *v86 = v92;
      v86[1] = v93;
      v95 = *MEMORY[0x1E699C600];
      v96 = *(v88 + 104);
      *(v0 + 664) = v96;
      *(v0 + 672) = (v88 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v96(v86, v95, v87);
      *(v0 + 718) = v121;
      sub_1B8B7B54C(v92, v93);
      v97 = swift_task_alloc();
      *(v0 + 680) = v97;
      *v97 = v0;
      v97[1] = sub_1B8B77F28;
      v98 = *(v0 + 360);
      v20 = *(v0 + 240);
      v21 = *(v0 + 248);
      v22 = *(v0 + 232);
      v23 = v0 + 32;
      v24 = v0 + 718;
      goto LABEL_21;
    }

    v99 = *(v0 + 296);
    v100 = *(v0 + 248);
    v101 = *(v0 + 256);
    v102 = *(v0 + 232);
    v103 = *(v0 + 240);
    LOBYTE(v122[0]) = *(v0 + 720);
    sub_1B8B78D64(v102, v122, v100, v99);
    v104 = *(v0 + 256);
    sub_1B8B79E8C(*(v0 + 296), *(v0 + 248));
    (*(*(v0 + 272) + 16))(*(v0 + 288), *(v0 + 296), *(v0 + 264));
    v109 = sub_1B8B5D3EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v111 = v109[2];
    v110 = v109[3];
    if (v111 >= v110 >> 1)
    {
      v109 = sub_1B8B5D3EC(v110 > 1, v111 + 1, 1, v109);
    }

    v112 = *(v0 + 288);
    v113 = *(v0 + 264);
    v114 = *(v0 + 272);
    (*(v114 + 8))(*(v0 + 296), v113);
    v109[2] = v111 + 1;
    (*(v114 + 32))(v109 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v111, v112, v113);
    *(v0 + 144) = v109;
    v115 = MEMORY[0x1E69E7CC0];
    v105 = *(v0 + 416);
    v106 = *(v0 + 336);
    v107 = *(v0 + 344);
    v108 = *(v0 + 224);
    *v108 = v109;
    v108[1] = v115;
    (*(v107 + 8))(v105, v106);
  }

  else
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 264);
    v28 = *(v0 + 232);
    v29 = sub_1B8C23C38();
    __swift_project_value_buffer(v29, qword_1EBAB3A00);
    (*(v26 + 16))(v25, v28, v27);
    v30 = sub_1B8C23C18();
    v31 = sub_1B8C25478();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v0 + 272);
    v33 = *(v0 + 280);
    v35 = *(v0 + 264);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v122[0] = v37;
      *v36 = 136380675;
      v38 = sub_1B8C23468();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_1B8B5DD48(v38, v40, v122);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1B8B22000, v30, v31, "Attachments directory does not exist: %{private}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B8CCB0E0](v37, -1, -1);
      MEMORY[0x1B8CCB0E0](v36, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    sub_1B8B7B4F8();
    v53 = swift_allocError();
    *v54 = 1;
    v55 = sub_1B8B5D2B8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v57 = v55[2];
    v56 = v55[3];
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1B8B5D2B8((v56 > 1), v57 + 1, 1, v55);
    }

    v58 = *(v0 + 224);
    v55[2] = v57 + 1;
    v55[v57 + 4] = v53;
    *(v0 + 152) = v55;
    *v58 = *(v0 + 144);
    v58[1] = v55;
  }

  v60 = *(v0 + 408);
  v59 = *(v0 + 416);
  v62 = *(v0 + 392);
  v61 = *(v0 + 400);
  v64 = *(v0 + 376);
  v63 = *(v0 + 384);
  v66 = *(v0 + 360);
  v65 = *(v0 + 368);
  v67 = *(v0 + 352);
  v68 = *(v0 + 328);
  v116 = *(v0 + 320);
  v117 = *(v0 + 296);
  v118 = *(v0 + 288);
  v119 = *(v0 + 280);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_1B8B765EC()
{
  v1 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B766E8, 0, 0);
}

uint64_t sub_1B8B766E8()
{
  v37 = v0;
  v1 = v0[11];
  v0[60] = v0[10];
  v0[61] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v34 = v1;
    do
    {
      v15 = *(v1 + v3);
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v36 = v8;
        *v6 = 136380675;
        *(v35 + 216) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v36);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write image attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v14 = v6;
        v1 = v34;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v22 = *(v35 + 456);
  v21 = *(v35 + 464);
  v23 = *(v35 + 448);
  v24 = *(v35 + 720);
  v25 = *(v35 + 400);
  v26 = *(v35 + 336);
  *v25 = *(v35 + 440);
  v25[1] = v23;
  v27 = *MEMORY[0x1E699C5D0];
  v22();
  *(v35 + 719) = v24;
  v28 = swift_task_alloc();
  *(v35 + 496) = v28;
  *v28 = v35;
  v28[1] = sub_1B8B7699C;
  v29 = *(v35 + 400);
  v30 = *(v35 + 240);
  v31 = *(v35 + 248);
  v32 = *(v35 + 232);

  return sub_1B8B759CC(v35 + 48, v32, v30, v35 + 719, v31);
}

uint64_t sub_1B8B7699C()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B76A98, 0, 0);
}

uint64_t sub_1B8B76A98()
{
  v53 = v0;
  v1 = *(v0 + 56);
  v45 = *(v0 + 48);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v49 = v1;
    do
    {
      v15 = v1[v3];
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v52 = v8;
        *v6 = 136380675;
        *(v51 + 208) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v52);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write text attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v14 = v6;
        v1 = v49;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v22 = *(v51 + 480);
  v21 = *(v51 + 488);
  v24 = *(v51 + 424);
  v23 = *(v51 + 432);
  v25 = *(v51 + 400);
  v43 = *(v51 + 408);
  v27 = *(v51 + 336);
  v26 = *(v51 + 344);
  v47 = *(v51 + 224);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v21);

  sub_1B8B58A40(v29);
  sub_1B8B58BD8(v1);

  sub_1B8B4645C(v24, v23);
  v30 = *(v26 + 8);
  v30(v25, v27);
  v30(v43, v27);
  *v47 = *(v51 + 144);
  v32 = *(v51 + 408);
  v31 = *(v51 + 416);
  v34 = *(v51 + 392);
  v33 = *(v51 + 400);
  v36 = *(v51 + 376);
  v35 = *(v51 + 384);
  v38 = *(v51 + 360);
  v37 = *(v51 + 368);
  v39 = *(v51 + 352);
  v40 = *(v51 + 328);
  v44 = *(v51 + 320);
  v46 = *(v51 + 296);
  v48 = *(v51 + 288);
  v50 = *(v51 + 280);

  v41 = *(v51 + 8);

  return v41();
}

uint64_t sub_1B8B76E38()
{
  v1 = *(*v0 + 552);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B76F34, 0, 0);
}

uint64_t sub_1B8B76F34()
{
  v37 = v0;
  v1 = v0[15];
  v0[70] = v0[14];
  v0[71] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v34 = v1;
    do
    {
      v15 = *(v1 + v3);
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v36 = v8;
        *v6 = 136380675;
        *(v35 + 200) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v36);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write sketch attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v14 = v6;
        v1 = v34;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v21 = *(v35 + 544);
  v22 = *(v35 + 536);
  v23 = *(v35 + 528);
  v24 = *(v35 + 720);
  v25 = *(v35 + 384);
  v26 = *(v35 + 336);
  *v25 = *(v35 + 520);
  v25[1] = v23;
  v27 = *MEMORY[0x1E699C5D0];
  v22();
  *(v35 + 715) = v24;
  v28 = swift_task_alloc();
  *(v35 + 576) = v28;
  *v28 = v35;
  v28[1] = sub_1B8B771F4;
  v29 = *(v35 + 384);
  v30 = *(v35 + 240);
  v31 = *(v35 + 248);
  v32 = *(v35 + 232);

  return sub_1B8B759CC(v35 + 96, v32, v30, v35 + 715, v31);
}

uint64_t sub_1B8B771F4()
{
  v1 = *(*v0 + 576);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B772F0, 0, 0);
}

uint64_t sub_1B8B772F0()
{
  v53 = v0;
  v1 = *(v0 + 104);
  v45 = *(v0 + 96);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v49 = v1;
    do
    {
      v15 = v1[v3];
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v52 = v8;
        *v6 = 136380675;
        *(v51 + 192) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v52);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write text attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v14 = v6;
        v1 = v49;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v21 = *(v51 + 568);
  v22 = *(v51 + 560);
  v24 = *(v51 + 504);
  v23 = *(v51 + 512);
  v25 = *(v51 + 384);
  v43 = *(v51 + 392);
  v27 = *(v51 + 336);
  v26 = *(v51 + 344);
  v47 = *(v51 + 224);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v21);

  sub_1B8B58A40(v29);
  sub_1B8B58BD8(v1);

  sub_1B8B4645C(v24, v23);
  v30 = *(v26 + 8);
  v30(v25, v27);
  v30(v43, v27);
  *v47 = *(v51 + 144);
  v32 = *(v51 + 408);
  v31 = *(v51 + 416);
  v34 = *(v51 + 392);
  v33 = *(v51 + 400);
  v36 = *(v51 + 376);
  v35 = *(v51 + 384);
  v38 = *(v51 + 360);
  v37 = *(v51 + 368);
  v39 = *(v51 + 352);
  v40 = *(v51 + 328);
  v44 = *(v51 + 320);
  v46 = *(v51 + 296);
  v48 = *(v51 + 288);
  v50 = *(v51 + 280);

  v41 = *(v51 + 8);

  return v41();
}

uint64_t sub_1B8B77694()
{
  v1 = *(*v0 + 616);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B77790, 0, 0);
}

uint64_t sub_1B8B77790()
{
  v35 = v0;
  v1 = v0[17];
  v0[78] = v0[16];
  v0[79] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v32 = v1;
    do
    {
      v15 = *(v1 + v3);
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v34 = v8;
        *v6 = 136380675;
        *(v33 + 160) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v34);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write image attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v14 = v6;
        v1 = v32;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v21 = *(v33 + 608);
  v22 = *(v33 + 600);
  v23 = *(v33 + 720);
  v24 = *(v33 + 368);
  v25 = *(v33 + 336);
  (*(*(v33 + 312) + 16))(v24, *(v33 + 328), *(v33 + 304));
  v22(v24, *MEMORY[0x1E699C588], v25);
  *(v33 + 712) = v23;
  v26 = swift_task_alloc();
  *(v33 + 640) = v26;
  *v26 = v33;
  v26[1] = sub_1B8B77A64;
  v27 = *(v33 + 368);
  v28 = *(v33 + 240);
  v29 = *(v33 + 248);
  v30 = *(v33 + 232);

  return sub_1B8B759CC(v33 + 16, v30, v28, v33 + 712, v29);
}

uint64_t sub_1B8B77A64()
{
  v1 = *(*v0 + 640);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B77B60, 0, 0);
}

uint64_t sub_1B8B77B60()
{
  v55 = v0;
  v1 = *(v0 + 24);
  v47 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v51 = v1;
    do
    {
      v14 = v1[v3];
      v15 = v14;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v16 = sub_1B8C23C38();
      __swift_project_value_buffer(v16, v5);
      v17 = v14;
      v18 = sub_1B8C23C18();
      v19 = sub_1B8C25478();

      if (os_log_type_enabled(v18, v19))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v54 = v8;
        *v6 = 136380675;
        *(v53 + 168) = v14;
        v9 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v54);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v18, v19, "Failed to write structured attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v1 = v51;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v6, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v20 = *(v53 + 632);
  v21 = *(v53 + 624);
  v22 = *(v53 + 592);
  v23 = *(v53 + 584);
  v42 = *(v53 + 368);
  v43 = *(v53 + 376);
  v25 = *(v53 + 336);
  v24 = *(v53 + 344);
  v26 = *(v53 + 312);
  v44 = *(v53 + 304);
  v45 = *(v53 + 328);
  v49 = *(v53 + 224);

  sub_1B8B58A40(v27);
  sub_1B8B58BD8(v20);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v1);

  sub_1B8B4645C(v23, v22);
  v29 = *(v24 + 8);
  v29(v42, v25);
  v29(v43, v25);
  (*(v26 + 8))(v45, v44);
  *v49 = *(v53 + 144);
  v31 = *(v53 + 408);
  v30 = *(v53 + 416);
  v33 = *(v53 + 392);
  v32 = *(v53 + 400);
  v35 = *(v53 + 376);
  v34 = *(v53 + 384);
  v37 = *(v53 + 360);
  v36 = *(v53 + 368);
  v38 = *(v53 + 352);
  v39 = *(v53 + 328);
  v46 = *(v53 + 320);
  v48 = *(v53 + 296);
  v50 = *(v53 + 288);
  v52 = *(v53 + 280);

  v40 = *(v53 + 8);

  return v40();
}

uint64_t sub_1B8B77F28()
{
  v1 = *(*v0 + 680);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B78024, 0, 0);
}

uint64_t sub_1B8B78024()
{
  v35 = v0;
  v1 = v0[5];
  v0[86] = v0[4];
  v0[87] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v32 = v1;
    do
    {
      v15 = *(v1 + v3);
      v16 = v15;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v17 = sub_1B8C23C38();
      __swift_project_value_buffer(v17, v5);
      v18 = v15;
      v19 = sub_1B8C23C18();
      v20 = sub_1B8C25478();

      if (os_log_type_enabled(v19, v20))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v34 = v8;
        *v6 = 136380675;
        *(v33 + 176) = v15;
        v9 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v34);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v19, v20, "Failed to write sketch attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v14 = v6;
        v1 = v32;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v14, -1, -1);
      }

      else
      {
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v21 = *(v33 + 672);
  v22 = *(v33 + 664);
  v23 = *(v33 + 720);
  v24 = *(v33 + 352);
  v25 = *(v33 + 336);
  (*(*(v33 + 312) + 16))(v24, *(v33 + 320), *(v33 + 304));
  v22(v24, *MEMORY[0x1E699C588], v25);
  *(v33 + 716) = v23;
  v26 = swift_task_alloc();
  *(v33 + 704) = v26;
  *v26 = v33;
  v26[1] = sub_1B8B782FC;
  v27 = *(v33 + 352);
  v28 = *(v33 + 240);
  v29 = *(v33 + 248);
  v30 = *(v33 + 232);

  return sub_1B8B759CC(v33 + 64, v30, v28, v33 + 716, v29);
}

uint64_t sub_1B8B782FC()
{
  v1 = *(*v0 + 704);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B783F8, 0, 0);
}

uint64_t sub_1B8B783F8()
{
  v55 = v0;
  v1 = *(v0 + 72);
  v47 = *(v0 + 64);
  v2 = v1[2];
  if (v2)
  {

    v3 = 4;
    v4 = 0x1EBAA5000;
    v5 = qword_1EBAB3A00;
    v51 = v1;
    do
    {
      v14 = v1[v3];
      v15 = v14;
      if (*(v4 + 2408) != -1)
      {
        swift_once();
      }

      v16 = sub_1B8C23C38();
      __swift_project_value_buffer(v16, v5);
      v17 = v14;
      v18 = sub_1B8C23C18();
      v19 = sub_1B8C25478();

      if (os_log_type_enabled(v18, v19))
      {
        v6 = swift_slowAlloc();
        v7 = v5;
        v8 = swift_slowAlloc();
        v54 = v8;
        *v6 = 136380675;
        *(v53 + 184) = v14;
        v9 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v10 = sub_1B8C25178();
        v12 = sub_1B8B5DD48(v10, v11, &v54);

        *(v6 + 4) = v12;
        _os_log_impl(&dword_1B8B22000, v18, v19, "Failed to write structured attachment.  %{private}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        v13 = v8;
        v5 = v7;
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        v1 = v51;
        v4 = 0x1EBAA5000uLL;
        MEMORY[0x1B8CCB0E0](v6, -1, -1);
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v20 = *(v53 + 696);
  v21 = *(v53 + 688);
  v22 = *(v53 + 656);
  v23 = *(v53 + 648);
  v42 = *(v53 + 352);
  v43 = *(v53 + 360);
  v25 = *(v53 + 336);
  v24 = *(v53 + 344);
  v26 = *(v53 + 312);
  v44 = *(v53 + 304);
  v45 = *(v53 + 320);
  v49 = *(v53 + 224);

  sub_1B8B58A40(v27);
  sub_1B8B58BD8(v20);

  sub_1B8B58A40(v28);
  sub_1B8B58BD8(v1);

  sub_1B8B4645C(v23, v22);
  v29 = *(v24 + 8);
  v29(v42, v25);
  v29(v43, v25);
  (*(v26 + 8))(v45, v44);
  *v49 = *(v53 + 144);
  v31 = *(v53 + 408);
  v30 = *(v53 + 416);
  v33 = *(v53 + 392);
  v32 = *(v53 + 400);
  v35 = *(v53 + 376);
  v34 = *(v53 + 384);
  v37 = *(v53 + 360);
  v36 = *(v53 + 368);
  v38 = *(v53 + 352);
  v39 = *(v53 + 328);
  v46 = *(v53 + 320);
  v48 = *(v53 + 296);
  v50 = *(v53 + 288);
  v52 = *(v53 + 280);

  v40 = *(v53 + 8);

  return v40();
}

uint64_t FBKSInteraction.Content.Kind.description.getter()
{
  v1 = 0x65746172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x6172747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E696769724FLL;
  }
}

uint64_t FBKSInteraction.Content.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](v1);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B788D4()
{
  v1 = 0x65746172656E6547;
  if (*v0 != 1)
  {
    v1 = 0x6172747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E696769724FLL;
  }
}

uint64_t FBKSInteraction.Content.AnotherKind.description.getter()
{
  v1 = 0x6C616E696769724FLL;
  *v0;
  if (*v0)
  {
    v1 = 0x65746172656E6547;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6172747845;
  }
}

uint64_t sub_1B8B789A8()
{
  if (*v0)
  {
    v1 = 0x65746172656E6547;
  }

  else
  {
    v1 = 0x6C616E696769724FLL;
  }

  if (*v0 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 0x6172747845;
  }
}

uint64_t FBKSInteraction.Content.AttachmentResult.urls.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FBKSInteraction.Content.AttachmentResult.errors.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t FBKSInteraction.Content.AttachmentResult.append(url:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B8C23498();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v10 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1B8B5D3EC(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1B8B5D3EC(v11 > 1, v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v9, v5);
  *v2 = v10;
  v13 = *(v2 + 8);
  *a2 = v10;
  a2[1] = v13;
}

uint64_t FBKSInteraction.Content.AttachmentResult.append(contentsOf:)@<X0>(void *a1@<X8>)
{

  sub_1B8B58A40(v3);
  v4 = *v1;
  v5 = v1[1];
  *a1 = v4;
  a1[1] = v5;
}

{

  sub_1B8B58BD8(v3);
  v4 = v1[1];
  *a1 = *v1;
  a1[1] = v4;
}

uint64_t FBKSInteraction.Content.AttachmentResult.append(contentsOf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];

  sub_1B8B58A40(v5);
  sub_1B8B58BD8(v6);
  v7 = *v3;
  v8 = v3[1];
  *a2 = v7;
  a2[1] = v8;
}

uint64_t sub_1B8B78D64@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v79 = a3;
  v78 = a4;
  v6 = sub_1B8C23938();
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8C23498();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v71[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v71[-v17];
  v18 = sub_1B8C23398();
  v77 = *(v18 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v71[-v24];
  v72 = *a2;
  v26 = [objc_opt_self() defaultManager];
  v84 = a1;
  sub_1B8C23468();
  v27 = sub_1B8C250F8();

  LODWORD(a2) = [v26 fileExistsAtPath_];

  if (a2)
  {
    sub_1B8B7B5A0(v79, v25);
    v28 = sub_1B8C238B8();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v25, 1, v28) != 1)
    {
      v49 = sub_1B8C23898();
      v51 = v50;
      (*(v29 + 8))(v25, v28);
      v82 = v49;
      v83 = v51;
      v52 = v77;
      (*(v77 + 104))(v21, *MEMORY[0x1E6968F70], v18);
      sub_1B8B34CA8();
      sub_1B8C23488();
      (*(v52 + 8))(v21, v18);
    }

    sub_1B8B48A20(v25);
    v30 = v76;
    (*(v76 + 16))(v9, v75, v6);
    if ((*(v30 + 88))(v9, v6) == *MEMORY[0x1E699C5B8])
    {
      (*(v30 + 96))(v9, v6);
      v32 = v80;
      v31 = v81;
      v33 = v73;
      (*(v80 + 32))(v73, v9, v81);
      v82 = sub_1B8C233D8();
      v83 = v34;
      v35 = v77;
      (*(v77 + 104))(v21, *MEMORY[0x1E6968F70], v18);
      sub_1B8B34CA8();
      sub_1B8C23488();
      (*(v35 + 8))(v21, v18);

      return (*(v32 + 8))(v33, v31);
    }

    (*(v30 + 8))(v9, v6);
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v53 = sub_1B8C23C38();
    __swift_project_value_buffer(v53, qword_1EBAB3A00);
    v55 = v80;
    v54 = v81;
    v56 = v74;
    (*(v80 + 16))(v74, v84, v81);
    v57 = sub_1B8C23C18();
    v58 = sub_1B8C25478();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v82 = v60;
      *v59 = 136315395;
      v61 = 0xE900000000000064;
      v62 = 0x65746172656E6547;
      if (v72 != 1)
      {
        v62 = 0x6172747845;
        v61 = 0xE500000000000000;
      }

      if (v72)
      {
        v63 = v62;
      }

      else
      {
        v63 = 0x6C616E696769724FLL;
      }

      if (v72)
      {
        v64 = v61;
      }

      else
      {
        v64 = 0xE800000000000000;
      }

      v65 = sub_1B8B5DD48(v63, v64, &v82);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2081;
      v66 = sub_1B8C23468();
      v68 = v67;
      (*(v55 + 8))(v56, v54);
      v69 = sub_1B8B5DD48(v66, v68, &v82);

      *(v59 + 14) = v69;
      _os_log_impl(&dword_1B8B22000, v57, v58, "Filename not provided through FBKSInteraction.AnnotatedContent and cannot be generated from %s content in attachments directory: %{private}s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v60, -1, -1);
      MEMORY[0x1B8CCB0E0](v59, -1, -1);
    }

    else
    {

      (*(v55 + 8))(v56, v54);
    }

    v48 = 5;
  }

  else
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v37 = sub_1B8C23C38();
    __swift_project_value_buffer(v37, qword_1EBAB3A00);
    v39 = v80;
    v38 = v81;
    (*(v80 + 16))(v14, v84, v81);
    v40 = sub_1B8C23C18();
    v41 = sub_1B8C25478();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v82 = v43;
      *v42 = 136380675;
      v44 = sub_1B8C23468();
      v46 = v45;
      (*(v39 + 8))(v14, v38);
      v47 = sub_1B8B5DD48(v44, v46, &v82);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1B8B22000, v40, v41, "Attachments directory does not exist: %{private}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B8CCB0E0](v43, -1, -1);
      MEMORY[0x1B8CCB0E0](v42, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v14, v38);
    }

    v48 = 1;
  }

  sub_1B8B7B4F8();
  swift_allocError();
  *v70 = v48;
  return swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FBKSInteraction.Content.fileExtension()()
{
  v1 = sub_1B8C23498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C23938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E699C5B8])
  {
    (*(v7 + 96))(v10, v6);
    (*(v2 + 32))(v5, v10, v1);
    v12 = sub_1B8C233A8();
    v10 = v13;
    (*(v2 + 8))(v5, v1);
    goto LABEL_14;
  }

  if (v11 == *MEMORY[0x1E699C5D8])
  {
    (*(v7 + 8))(v10, v6);
    v12 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    swift_allocError();
    v15 = v14;
    *v14 = 0xD000000000000036;
    v14[1] = 0x80000001B8C33740;
    v16 = MEMORY[0x1E699C568];
LABEL_5:
    (*(*(v12 - 8) + 104))(v15, *v16, v12);
    swift_willThrow();
    goto LABEL_14;
  }

  if (v11 == *MEMORY[0x1E699C5D0])
  {
LABEL_7:
    v12 = 7633012;
    (*(v7 + 8))(v10, v6);
    v10 = 0xE300000000000000;
    goto LABEL_14;
  }

  if (v11 == *MEMORY[0x1E699C5F0])
  {
    (*(v7 + 8))(v10, v6);
    v10 = 0xE300000000000000;
    v12 = 6778480;
    goto LABEL_14;
  }

  if (v11 == *MEMORY[0x1E699C5E0] || v11 == *MEMORY[0x1E699C590] || v11 == *MEMORY[0x1E699C600])
  {
LABEL_13:
    v12 = 1635017060;
    (*(v7 + 8))(v10, v6);
    v10 = 0xE400000000000000;
    goto LABEL_14;
  }

  if (v11 == *MEMORY[0x1E699C608] || v11 == *MEMORY[0x1E699C578])
  {
    (*(v7 + 8))(v10, v6);
LABEL_18:
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v19 = sub_1B8C23C38();
    __swift_project_value_buffer(v19, qword_1EBAB3A00);
    v20 = sub_1B8C23C18();
    v21 = sub_1B8C25478();
    if (os_log_type_enabled(v20, v21))
    {
      v10 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v10 = 136446210;
      *(v10 + 4) = sub_1B8B5DD48(0x65747845656C6966, 0xEF29286E6F69736ELL, &v36);
      _os_log_impl(&dword_1B8B22000, v20, v21, "%{public}s cannot be used with complex types", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
    }

    v12 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    swift_allocError();
    v15 = v23;
    v16 = MEMORY[0x1E699C560];
    goto LABEL_5;
  }

  if (v11 == *MEMORY[0x1E699C5F8])
  {
    goto LABEL_13;
  }

  if (v11 == *MEMORY[0x1E699C580])
  {
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E699C588])
  {
    (*(v7 + 8))(v10, v6);
    v10 = 0xE400000000000000;
    v12 = 1852797802;
    goto LABEL_14;
  }

  if (v11 == *MEMORY[0x1E699C5A8])
  {
    (*(v7 + 96))(v10, v6);
    sub_1B8B4645C(*v10, *(v10 + 1));
    v24 = &unk_1EBAA6EF0;
    v25 = &unk_1B8C2A868;
LABEL_31:
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v24, v25) + 48);
    v27 = sub_1B8C237E8();
    (*(*(v27 - 8) + 8))(&v10[v26], v27);
    goto LABEL_18;
  }

  if (v11 == *MEMORY[0x1E699C5B0])
  {
    (*(v7 + 96))(v10, v6);
    sub_1B8B4645C(*v10, *(v10 + 1));
    v24 = &unk_1EBAA6EE8;
    v25 = &unk_1B8C2A860;
    goto LABEL_31;
  }

  if (v11 == *MEMORY[0x1E699C5A0] || v11 == *MEMORY[0x1E699C598])
  {
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E699C5E8])
  {
    goto LABEL_13;
  }

  if (v11 == *MEMORY[0x1E699C5C0])
  {
    (*(v7 + 8))(v10, v6);
    v10 = 0xE400000000000000;
    v12 = 1819112552;
  }

  else
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v28 = sub_1B8C23C38();
    __swift_project_value_buffer(v28, qword_1EBAB3A00);
    v29 = sub_1B8C23C18();
    v30 = sub_1B8C25478();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_1B8B5DD48(0x65747845656C6966, 0xEF29286E6F69736ELL, &v36);
      _os_log_impl(&dword_1B8B22000, v29, v30, "%{public}s unknown Content type", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B8CCB0E0](v32, -1, -1);
      MEMORY[0x1B8CCB0E0](v31, -1, -1);
    }

    v12 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v33, *MEMORY[0x1E699C560], v12);
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
  }

LABEL_14:
  v17 = v12;
  v18 = v10;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t sub_1B8B79E8C(uint64_t a1, uint64_t a2)
{
  v161 = a2;
  v175[2] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v160 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v159 = &v147 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v149 = &v147 - v9;
  v10 = sub_1B8C238B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v154 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v147 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v147 - v17;
  v152 = sub_1B8C237E8();
  v18 = *(v152 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B8C25168();
  v157 = *(v21 - 8);
  v158 = v21;
  v22 = *(v157 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v150 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v147 - v25;
  v26 = sub_1B8C23938();
  v27 = *(v26 - 8);
  v168 = v26;
  v169 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v170 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1B8C23498();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v166 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v163 = &v147 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v147 - v37;
  if (qword_1EBAA5968 != -1)
  {
    swift_once();
  }

  v39 = sub_1B8C23C38();
  v40 = __swift_project_value_buffer(v39, qword_1EBAB3A00);
  v164 = v31[2];
  v165 = v31 + 2;
  v164(v38, a1, v30);
  v173 = v30;
  v41 = v31;
  v171 = v40;
  v42 = sub_1B8C23C18();
  v43 = sub_1B8C25468();
  v44 = os_log_type_enabled(v42, v43);
  v162 = v11;
  v153 = v18;
  v172 = v31;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v175[0] = v147;
    *v45 = 136315394;
    *(v45 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C33780, v175);
    *(v45 + 12) = 2080;
    v46 = sub_1B8C23468();
    v47 = a1;
    v48 = v10;
    v50 = v49;
    v51 = v41[1];
    v52 = v38;
    v53 = v173;
    v51(v52, v173);
    v54 = sub_1B8B5DD48(v46, v50, v175);
    v10 = v48;
    a1 = v47;

    *(v45 + 14) = v54;
    _os_log_impl(&dword_1B8B22000, v42, v43, "%s %s", v45, 0x16u);
    v55 = v147;
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v55, -1, -1);
    MEMORY[0x1B8CCB0E0](v45, -1, -1);
  }

  else
  {

    v51 = v31[1];
    v56 = v38;
    v53 = v173;
    v51(v56, v173);
  }

  v57 = objc_opt_self();
  v58 = [v57 defaultManager];
  sub_1B8C23468();
  v59 = sub_1B8C250F8();

  v60 = [v58 fileExistsAtPath_];

  if (v60)
  {
    v61 = v166;
    v164(v166, a1, v53);
    v62 = sub_1B8C23C18();
    v63 = sub_1B8C25478();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v175[0] = v65;
      *v64 = 136380675;
      v66 = sub_1B8C23468();
      v67 = v61;
      v69 = v68;
      v51(v67, v53);
      v70 = sub_1B8B5DD48(v66, v69, v175);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_1B8B22000, v62, v63, "Attachment URL already exists: %{private}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1B8CCB0E0](v65, -1, -1);
      MEMORY[0x1B8CCB0E0](v64, -1, -1);
    }

    else
    {

      v51(v61, v53);
    }

LABEL_14:
    sub_1B8B7B4F8();
    v86 = swift_allocError();
    *v87 = 5;
    v174 = v86;
LABEL_18:
    result = swift_willThrow();
    goto LABEL_44;
  }

  v71 = v169;
  v72 = v170;
  v73 = v168;
  (*(v169 + 16))(v170, v167, v168);
  v74 = (*(v71 + 88))(v72, v73);
  if (v74 == *MEMORY[0x1E699C5B8])
  {
    v173 = v51;
    (*(v71 + 96))(v72, v73);
    v75 = v163;
    (v172[4])(v163, v72, v53);
    v76 = v75;
    v77 = [v57 defaultManager];
    v78 = sub_1B8C233E8();
    v79 = sub_1B8C233E8();
    v175[0] = 0;
    v80 = [v77 copyItemAtURL:v78 toURL:v79 error:v175];

    v81 = v175[0];
    if (v80)
    {
      v82 = v159;
      sub_1B8B7B5A0(v161, v159);
      v83 = v162;
      if ((*(v162 + 48))(v82, 1, v10) == 1)
      {
        v84 = v81;
        v173(v76, v53);
        result = sub_1B8B48A20(v82);
        goto LABEL_44;
      }

      v105 = v155;
      (*(v83 + 32))(v155, v82, v10);
      v106 = v81;
      v107 = v174;
      sub_1B8C23858();
      v174 = v107;
      (*(v83 + 8))(v105, v10);
    }

    else
    {
      v93 = v175[0];
      v94 = sub_1B8C23368();

      v174 = v94;
      swift_willThrow();
    }

    result = (v173)(v76, v53);
    goto LABEL_44;
  }

  if (v74 == *MEMORY[0x1E699C5D8])
  {
    (*(v71 + 8))(v72, v73);
    v88 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    v89 = swift_allocError();
    v91 = v90;
    *v90 = 0xD00000000000003DLL;
    v90[1] = 0x80000001B8C337A0;
    v92 = MEMORY[0x1E699C568];
LABEL_17:
    (*(*(v88 - 8) + 104))(v91, *v92, v88);
    v174 = v89;
    goto LABEL_18;
  }

  v95 = v160;
  if (v74 == *MEMORY[0x1E699C5D0])
  {
    goto LABEL_21;
  }

  if (v74 == *MEMORY[0x1E699C5F0] || v74 == *MEMORY[0x1E699C5E0] || v74 == *MEMORY[0x1E699C590] || v74 == *MEMORY[0x1E699C600])
  {
    goto LABEL_38;
  }

  if (v74 == *MEMORY[0x1E699C608] || v74 == *MEMORY[0x1E699C578])
  {
    (*(v71 + 8))(v72, v73);
LABEL_34:
    v108 = sub_1B8C23C18();
    v109 = sub_1B8C25478();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v175[0] = v111;
      *v110 = 136446210;
      *(v110 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C33780, v175);
      _os_log_impl(&dword_1B8B22000, v108, v109, "%{public}s cannot be used with complex types", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v111);
      MEMORY[0x1B8CCB0E0](v111, -1, -1);
      MEMORY[0x1B8CCB0E0](v110, -1, -1);
    }

    v88 = sub_1B8C238C8();
    sub_1B8B7B1B4();
    v89 = swift_allocError();
    v91 = v112;
    v92 = MEMORY[0x1E699C560];
    goto LABEL_17;
  }

  if (v74 == *MEMORY[0x1E699C5F8])
  {
LABEL_38:
    (*(v71 + 96))(v72, v73);
    v113 = v72;
    v99 = *v72;
    v101 = v113[1];
    goto LABEL_39;
  }

  if (v74 == *MEMORY[0x1E699C580])
  {
    goto LABEL_21;
  }

  if (v74 == *MEMORY[0x1E699C588])
  {
    v119 = v10;
    v120 = v170;
    (*(v71 + 96))(v170, v73);
    v121 = v153;
    v122 = v151;
    v123 = v152;
    (*(v153 + 32))(v151, v120, v152);
    v124 = v174;
    v125 = sub_1B8C237D8();
    v174 = v124;
    if (v124)
    {
      result = (*(v121 + 8))(v122, v123);
    }

    else
    {
      v175[0] = v125;
      v175[1] = v126;
      v133 = v150;
      sub_1B8C25158();
      sub_1B8B34CA8();
      v134 = v174;
      sub_1B8C256A8();
      v174 = v134;
      if (v134)
      {
        (*(v157 + 8))(v133, v158);
        (*(v121 + 8))(v122, v123);
      }

      else
      {
        (*(v157 + 8))(v133, v158);

        v142 = v149;
        sub_1B8B7B5A0(v161, v149);
        v143 = v162;
        v144 = v119;
        if ((*(v162 + 48))(v142, 1, v119) == 1)
        {
          (*(v121 + 8))(v151, v123);
          result = sub_1B8B48A20(v142);
        }

        else
        {
          v145 = v148;
          (*(v143 + 32))(v148, v142, v144);
          v146 = v174;
          sub_1B8C23858();
          v174 = v146;
          (*(v143 + 8))(v145, v144);
          result = (*(v121 + 8))(v151, v123);
        }
      }
    }

    goto LABEL_44;
  }

  v127 = v153;
  v128 = v152;
  if (v74 == *MEMORY[0x1E699C5A8])
  {
    v129 = v170;
    (*(v169 + 96))(v170, v73);
    sub_1B8B4645C(*v129, *(v129 + 1));
    v130 = &unk_1EBAA6EF0;
    v131 = &unk_1B8C2A868;
LABEL_53:
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(v130, v131);
    (*(v127 + 8))(&v129[*(v132 + 48)], v128);
    goto LABEL_34;
  }

  if (v74 == *MEMORY[0x1E699C5B0])
  {
    v129 = v170;
    (*(v169 + 96))(v170, v73);
    sub_1B8B4645C(*v129, *(v129 + 1));
    v130 = &unk_1EBAA6EE8;
    v131 = &unk_1B8C2A860;
    goto LABEL_53;
  }

  v71 = v169;
  v72 = v170;
  if (v74 == *MEMORY[0x1E699C5A0] || v74 == *MEMORY[0x1E699C598])
  {
    goto LABEL_21;
  }

  if (v74 == *MEMORY[0x1E699C5E8])
  {
    goto LABEL_38;
  }

  if (v74 == *MEMORY[0x1E699C5C0])
  {
LABEL_21:
    (*(v71 + 96))(v72, v73);
    v96 = *v72;
    v97 = v72[1];
    v98 = v156;
    sub_1B8C25158();
    v99 = sub_1B8C25138();
    v101 = v100;

    (*(v157 + 8))(v98, v158);
    if (v101 >> 60 == 15)
    {
      v102 = sub_1B8C23C18();
      v103 = sub_1B8C25478();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_1B8B22000, v102, v103, "Cannot convert .text to data using UTF8", v104, 2u);
        MEMORY[0x1B8CCB0E0](v104, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_39:
    v114 = v174;
    sub_1B8C234C8();
    v174 = v114;
    if (!v114)
    {
      sub_1B8B7B5A0(v161, v95);
      v115 = v162;
      if ((*(v162 + 48))(v95, 1, v10) == 1)
      {
        sub_1B8B4645C(v99, v101);
        result = sub_1B8B48A20(v95);
        goto LABEL_44;
      }

      v116 = v154;
      (*(v115 + 32))();
      v117 = v174;
      sub_1B8C23858();
      v174 = v117;
      (*(v115 + 8))(v116, v10);
    }

    result = sub_1B8B4645C(v99, v101);
    goto LABEL_44;
  }

  v135 = sub_1B8C23C18();
  v136 = sub_1B8C25478();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v175[0] = v138;
    *v137 = 136446210;
    *(v137 + 4) = sub_1B8B5DD48(0xD000000000000016, 0x80000001B8C33780, v175);
    _os_log_impl(&dword_1B8B22000, v135, v136, "%{public}s unknown Content type", v137, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v138);
    MEMORY[0x1B8CCB0E0](v138, -1, -1);
    MEMORY[0x1B8CCB0E0](v137, -1, -1);
  }

  v139 = sub_1B8C238C8();
  sub_1B8B7B1B4();
  v140 = swift_allocError();
  (*(*(v139 - 8) + 104))(v141, *MEMORY[0x1E699C560], v139);
  v174 = v140;
  swift_willThrow();
  result = (*(v169 + 8))(v170, v168);
LABEL_44:
  v118 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B8B7B1B4()
{
  result = qword_1EBAA6EE0;
  if (!qword_1EBAA6EE0)
  {
    sub_1B8C238C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EE0);
  }

  return result;
}

unint64_t sub_1B8B7B210()
{
  result = qword_1EBAA6EF8;
  if (!qword_1EBAA6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6EF8);
  }

  return result;
}

unint64_t sub_1B8B7B268()
{
  result = qword_1EBAA6F00;
  if (!qword_1EBAA6F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F08, &qword_1B8C2A8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F00);
  }

  return result;
}

uint64_t _s11AnotherKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s11AnotherKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B8B7B430(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B8B7B444(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_1B8B7B464(uint64_t *a1, int a2)
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

uint64_t sub_1B8B7B4AC(uint64_t result, int a2, int a3)
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

unint64_t sub_1B8B7B4F8()
{
  result = qword_1EBAA7290;
  if (!qword_1EBAA7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7290);
  }

  return result;
}

uint64_t sub_1B8B7B54C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B8B7B5A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppMetaView()
{
  result = qword_1EBAA6F10;
  if (!qword_1EBAA6F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B7B684()
{
  result = type metadata accessor for BatchInteraction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8B7B70C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C24398();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1B8C246B8();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F20, &qword_1B8C2AA60);
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F28, &qword_1B8C2AA68);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v28 - v14;
  v15 = *(v1 + *(type metadata accessor for BatchInteraction(0) + 24));
  if (!v15)
  {
    return (*(v12 + 56))(a1, 1, 1, v37);
  }

  swift_getKeyPath();
  *&v54 = v15;
  sub_1B8B7C44C(&qword_1EBAA6F30, type metadata accessor for AppInfoController);
  sub_1B8C23588();

  v16 = v15[3];
  if (!v16)
  {
    return (*(v12 + 56))(a1, 1, 1, v37);
  }

  v30 = a1;
  v17 = v15[4];
  v18 = v15[2];
  v28 = v18;

  v19 = v17;
  v29 = v19;
  v20 = sub_1B8C242E8();
  v41 = 0;
  sub_1B8B7BCF8(v18, v16, v19, &v54);
  v48 = v60;
  v49 = v61;
  v50 = v62;
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v47 = v59;
  v42 = v54;
  v43 = v55;
  v52[6] = v60;
  v52[7] = v61;
  v52[8] = v62;
  v52[2] = v56;
  v52[3] = v57;
  v52[4] = v58;
  v52[5] = v59;
  v51 = v63[0];
  v53 = v63[0];
  v52[0] = v54;
  v52[1] = v55;
  sub_1B8B34450(&v42, &v38, &qword_1EBAA6F38, &qword_1B8C2AA98);
  sub_1B8B3433C(v52, &qword_1EBAA6F38, &qword_1B8C2AA98);
  *&v40[55] = v45;
  *&v40[39] = v44;
  *&v40[103] = v48;
  *&v40[119] = v49;
  *&v40[135] = v50;
  *&v40[71] = v46;
  *&v40[87] = v47;
  *&v40[7] = v42;
  *&v40[23] = v43;
  *(&v39[6] + 1) = *&v40[96];
  *(&v39[7] + 1) = *&v40[112];
  *(&v39[8] + 1) = *&v40[128];
  *(&v39[2] + 1) = *&v40[32];
  *(&v39[3] + 1) = *&v40[48];
  *(&v39[4] + 1) = *&v40[64];
  *(&v39[5] + 1) = *&v40[80];
  *(v39 + 1) = *v40;
  v40[151] = v51;
  *&v38 = v20;
  *(&v38 + 1) = 0x4018000000000000;
  LOBYTE(v39[0]) = v41;
  *(&v39[9] + 1) = *&v40[144];
  *(&v39[1] + 1) = *&v40[16];
  BYTE9(v39[9]) = 0;
  sub_1B8C246A8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F40, &qword_1B8C2AAA0);
  v22 = sub_1B8B7C1E0();
  v23 = v34;
  sub_1B8C24B68();
  (*(v31 + 8))(v8, v32);
  v62 = v39[7];
  v63[0] = v39[8];
  *(v63 + 10) = *(&v39[8] + 10);
  v58 = v39[3];
  v59 = v39[4];
  v60 = v39[5];
  v61 = v39[6];
  v54 = v38;
  v55 = v39[0];
  v56 = v39[1];
  v57 = v39[2];
  sub_1B8B3433C(&v54, &qword_1EBAA6F40, &qword_1B8C2AAA0);
  sub_1B8C24388();
  sub_1B8C24378();
  sub_1B8C24368();
  sub_1B8C24378();
  sub_1B8C243B8();
  *&v38 = v21;
  *(&v38 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v33;
  v25 = v36;
  sub_1B8C24B28();

  (*(v35 + 8))(v23, v25);
  v26 = v30;
  sub_1B8B28464(v24, v30);
  return (*(v12 + 56))(v26, 0, 1, v37);
}

uint64_t sub_1B8B7BCF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a2;
  v43 = a1;
  v6 = sub_1B8C23A28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C24D18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3;
  sub_1B8C24CF8();
  (*(v12 + 104))(v15, *MEMORY[0x1E6981630], v11);
  v46 = sub_1B8C24D28();

  (*(v12 + 8))(v15, v11);
  sub_1B8C24F48();
  sub_1B8C23E38();
  v17 = v57;
  v50 = v56;
  v51 = v58;
  v18 = v59;
  v44 = v61;
  v45 = v60;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_1EBAB3AA8);
  (*(v7 + 16))(v10, v19, v6);
  v49 = sub_1B8C24CE8();
  LOBYTE(v68) = v17;
  LOBYTE(v62) = v18;
  v48 = v18;
  v20 = [objc_opt_self() mainBundle];
  v21 = sub_1B8C23348();
  LODWORD(v47) = v17;
  v23 = v22;

  v68 = v21;
  v69 = v23;
  sub_1B8B34CA8();
  v24 = sub_1B8C249E8();
  v26 = v25;
  v28 = v27;
  sub_1B8C24938();
  v29 = sub_1B8C249B8();
  v31 = v30;
  LODWORD(v43) = v32;
  v34 = v33;

  sub_1B8B34060(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v45;
  v37 = v46;
  *&v62 = v46;
  *(&v62 + 1) = v50;
  LOBYTE(v63) = v47;
  *(&v63 + 1) = *v55;
  DWORD1(v63) = *&v55[3];
  *(&v63 + 1) = v51;
  LOBYTE(v64) = v48;
  *(&v64 + 1) = *v54;
  DWORD1(v64) = *&v54[3];
  v38 = v44;
  *(&v64 + 1) = v45;
  *&v65 = v44;
  *(&v65 + 1) = v49;
  v66 = 0x4000000000000000uLL;
  v67 = 0;
  v39 = v43 & 1;
  v53 = v43 & 1;
  v52 = 1;
  v40 = v65;
  *(a4 + 32) = v64;
  *(a4 + 48) = v40;
  v41 = v63;
  *a4 = v62;
  *(a4 + 16) = v41;
  *(a4 + 64) = v66;
  *(a4 + 80) = 0;
  *(a4 + 88) = v29;
  *(a4 + 96) = v31;
  *(a4 + 104) = v39;
  *(a4 + 112) = v34;
  *(a4 + 120) = KeyPath;
  *(a4 + 128) = 0x3FE0000000000000;
  *(a4 + 136) = 0;
  *(a4 + 144) = 1;
  sub_1B8B34450(&v62, &v68, &qword_1EBAA6F60, &qword_1B8C2AAE0);
  sub_1B8B34694(v29, v31, v39);

  sub_1B8B34060(v29, v31, v39);

  v68 = v37;
  v69 = v50;
  v70 = v47;
  *v71 = *v55;
  *&v71[3] = *&v55[3];
  v72 = v51;
  v73 = v48;
  *v74 = *v54;
  *&v74[3] = *&v54[3];
  v75 = v36;
  v76 = v38;
  v77 = v49;
  v78 = 0x4000000000000000;
  v79 = 0;
  v80 = 0;
  return sub_1B8B3433C(&v68, &qword_1EBAA6F60, &qword_1B8C2AAE0);
}

unint64_t sub_1B8B7C1E0()
{
  result = qword_1EBAA6F48;
  if (!qword_1EBAA6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F40, &qword_1B8C2AAA0);
    sub_1B8B7C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F48);
  }

  return result;
}

unint64_t sub_1B8B7C26C()
{
  result = qword_1EBAA6F50;
  if (!qword_1EBAA6F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F58, &qword_1B8C2AAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F50);
  }

  return result;
}

unint64_t sub_1B8B7C2D0()
{
  result = qword_1EBAA6F68;
  if (!qword_1EBAA6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F70, &qword_1B8C2AAE8);
    sub_1B8B7C354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F68);
  }

  return result;
}

unint64_t sub_1B8B7C354()
{
  result = qword_1EBAA6F78;
  if (!qword_1EBAA6F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F28, &qword_1B8C2AA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F40, &qword_1B8C2AAA0);
    sub_1B8B7C1E0();
    swift_getOpaqueTypeConformance2();
    sub_1B8B7C44C(&qword_1EBAA5F58, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F78);
  }

  return result;
}

uint64_t sub_1B8B7C44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s17QuestionKindErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t _s17QuestionKindErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8B7C558(uint64_t a1, char a2)
{
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v9 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v18;
  }

  swift_getKeyPath();
  v18 = a1;
  sub_1B8B7D638();
  sub_1B8C23588();

  v10 = *(a1 + 24);

  v17[1] = v10;
  v18 = sub_1B8C259E8();
  v19 = v11;
  MEMORY[0x1B8CC9EB0](0x7461756C61764520, 0xEB000000006E6F69);
  if (v10 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 115;
  }

  if (v10 == 1)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  MEMORY[0x1B8CC9EB0](v12, v13);

  v14 = [objc_opt_self() mainBundle];
  v15 = sub_1B8C23348();

  return v15;
}

uint64_t sub_1B8B7C7CC(uint64_t a1, char a2)
{
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v9 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
  }

  sub_1B8B522B8();
  v11 = v10;

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v12 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v24;
  }

  swift_getKeyPath();
  v24 = a1;
  sub_1B8B7D638();
  sub_1B8C23588();

  v13 = *(a1 + 24);

  v15 = v11 - v13;
  if (__OFSUB__(v11, v13))
  {
    __break(1u);
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1B8C257E8();
    v23[1] = v11 - v13;
    v16 = sub_1B8C259E8();
    v18 = v17;

    v24 = v16;
    v25 = v18;
    MEMORY[0x1B8CC9EB0](0x7461756C61766520, 0xEB000000006E6F69);
    if (v15 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = 115;
    }

    if (v15 == 1)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = 0xE100000000000000;
    }

    MEMORY[0x1B8CC9EB0](v19, v20);

    MEMORY[0x1B8CC9EB0](0x7466656C20, 0xE500000000000000);
    v21 = [objc_opt_self() mainBundle];
    v22 = sub_1B8C23348();

    return v22;
  }

  return result;
}

uint64_t sub_1B8B7CB2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F80, &qword_1B8C2ABC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  *v9 = sub_1B8C24468();
  *(v9 + 1) = 0x4040000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F88, &qword_1B8C2ABD0);
  sub_1B8B7CD7C(a1, a2 & 1, &v9[*(v10 + 44)]);
  v11 = sub_1B8C24808();
  sub_1B8C23D18();
  v12 = &v9[*(v6 + 36)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F90, &qword_1B8C2ABD8);
  v17 = sub_1B8C24408();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B8C2A740;
  sub_1B8C243F8();
  sub_1B8B8ACD4(v21);
  swift_setDeallocating();
  (*(v18 + 8))(v21 + v20, v17);
  swift_deallocClassInstance();
  sub_1B8B7D548();
  sub_1B8C24B58();

  sub_1B8B3433C(v9, &qword_1EBAA6F80, &qword_1B8C2ABC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FB0, &qword_1B8C2ABE8);
  v23 = (a3 + *(result + 36));
  *v23 = sub_1B8B7D4B8;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 0;
  return result;
}

uint64_t sub_1B8B7CD7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FB8, &qword_1B8C2ABF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = sub_1B8C242A8();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1B8B7C558(a1, a2 & 1);
  v43 = v16;
  sub_1B8B34CA8();
  v17 = sub_1B8C249E8();
  v19 = v18;
  v21 = v20;
  sub_1B8C24938();
  v22 = sub_1B8C249B8();
  v38 = v23;
  v39 = v22;
  v37 = v24;
  v40 = v25;

  sub_1B8B34060(v17, v19, v21 & 1);

  v26 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v27 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v35 + 8))(v15, v36);
    v26 = v42;
  }

  *v11 = sub_1B8C24468();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FC0, &qword_1B8C2ABF8);
  sub_1B8B7D0E0(a1, a2 & 1, &v11[*(v28 + 44)]);
  v29 = v41;
  sub_1B8B34450(v11, v41, &qword_1EBAA6FB8, &qword_1B8C2ABF0);
  v31 = v38;
  v30 = v39;
  *a3 = v39;
  *(a3 + 8) = v31;
  v32 = v37 & 1;
  *(a3 + 16) = v37 & 1;
  *(a3 + 24) = v40;
  *(a3 + 32) = v26;
  *(a3 + 40) = 0x4059000000000000;
  *(a3 + 48) = 0;
  *(a3 + 56) = xmmword_1B8C27D60;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FC8, &qword_1B8C2AC00);
  sub_1B8B34450(v29, a3 + *(v33 + 64), &qword_1EBAA6FB8, &qword_1B8C2ABF0);
  sub_1B8B34694(v30, v31, v32);

  sub_1B8B3433C(v11, &qword_1EBAA6FB8, &qword_1B8C2ABF0);
  sub_1B8B3433C(v29, &qword_1EBAA6FB8, &qword_1B8C2ABF0);

  sub_1B8B34060(v30, v31, v32);
}

uint64_t sub_1B8B7D0E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v38 = a2;
  v6 = sub_1B8C242A8();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FD0, &qword_1B8C2AC08);
  v9 = *(*(v40 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v40);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v12;
  v39 = sub_1B8C242E8();
  v45 = sub_1B8B7C7CC(a1, v3 & 1);
  v46 = v13;
  sub_1B8B34CA8();
  v14 = sub_1B8C249E8();
  v16 = v15;
  v18 = v17;
  sub_1B8C248E8();
  v19 = sub_1B8C24978();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1B8B34060(v14, v16, v18 & 1);

  v26 = v23 & 1;
  sub_1B8B34694(v19, v21, v23 & 1);
  sub_1B8B34060(v19, v21, v23 & 1);

  v49 = 1;
  v48 = 1;
  v47 = v23 & 1;
  if (v38)
  {
    v44 = a1;
  }

  else
  {

    sub_1B8C25488();
    v27 = sub_1B8C247B8();
    sub_1B8C23C08();

    v28 = v35;
    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v36 + 8))(v28, v37);
  }

  sub_1B8B51580();
  v30 = v29;

  v45 = v30;
  LOBYTE(v46) = 0;
  v43 = 0x3FF0000000000000;
  sub_1B8B54888();
  v31 = v41;
  sub_1B8C23DD8();
  *(v31 + *(v40 + 36)) = sub_1B8C24C68();
  v32 = v42;
  sub_1B8B34450(v31, v42, &qword_1EBAA6FD0, &qword_1B8C2AC08);
  *a3 = v39;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21;
  *(a3 + 56) = v26;
  *(a3 + 64) = v25;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6FD8, &qword_1B8C2AC10);
  sub_1B8B34450(v32, a3 + *(v33 + 48), &qword_1EBAA6FD0, &qword_1B8C2AC08);
  sub_1B8B34694(v19, v21, v26);

  sub_1B8B3433C(v31, &qword_1EBAA6FD0, &qword_1B8C2AC08);
  sub_1B8B3433C(v32, &qword_1EBAA6FD0, &qword_1B8C2AC08);
  sub_1B8B34060(v19, v21, v26);
}

uint64_t sub_1B8B7D4B8()
{
  v0 = type metadata accessor for AnalyticsEvent();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1B8C03B68();
  return sub_1B8B50964(v3);
}

unint64_t sub_1B8B7D548()
{
  result = qword_1EBAA6F98;
  if (!qword_1EBAA6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F80, &qword_1B8C2ABC8);
    sub_1B8B7D5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6F98);
  }

  return result;
}

unint64_t sub_1B8B7D5D4()
{
  result = qword_1EBAA6FA0;
  if (!qword_1EBAA6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6FA8, &qword_1B8C2ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6FA0);
  }

  return result;
}

unint64_t sub_1B8B7D638()
{
  result = qword_1EBAA5F60;
  if (!qword_1EBAA5F60)
  {
    type metadata accessor for ScoreController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA5F60);
  }

  return result;
}

unint64_t sub_1B8B7D690()
{
  result = qword_1EBAA6FE0[0];
  if (!qword_1EBAA6FE0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6FB0, &qword_1B8C2ABE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6F80, &qword_1B8C2ABC8);
    sub_1B8B7D548();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBAA6FE0);
  }

  return result;
}

uint64_t sub_1B8B7D758()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8B7D7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B8B7D7FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B8B7D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v78 = a4;
  v80 = a2;
  v79 = a1;
  v97 = a5;
  v86 = sub_1B8C24078();
  v8 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v94 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7068, &unk_1B8C2CD10);
  v10 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v78 - v11;
  v12 = sub_1B8C23A28();
  v99 = *(v12 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B8C24DE8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  v20 = sub_1B8C23FF8();
  v81 = *(v20 - 8);
  v21 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v78 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A38, &qword_1B8C29DE8);
  v24 = sub_1B8C23FF8();
  v84 = *(v24 - 8);
  v25 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v78 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA5F98, qword_1B8C29DF0);
  v27 = sub_1B8C23FF8();
  v85 = *(v27 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v83 = &v78 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA61A8, &unk_1B8C2CE50);
  v30 = sub_1B8C23FF8();
  v89 = *(v30 - 8);
  v31 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v87 = &v78 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7070, &qword_1B8C2CD30);
  v91 = v30;
  v93 = sub_1B8C23FF8();
  v92 = *(v93 - 8);
  v33 = *(v92 + 64);
  v34 = MEMORY[0x1EEE9AC00](v93);
  v88 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v90 = &v78 - v36;
  v100 = a3;
  v101 = v78;
  v102 = a6;
  v103 = v79;
  v104 = v80;
  sub_1B8C242E8();
  sub_1B8C24DD8();
  sub_1B8C24808();
  WitnessTable = swift_getWitnessTable();
  sub_1B8C24C18();
  (*(v16 + 8))(v19, v15);
  if (qword_1EBAA59A0 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v12, qword_1EBAB3A60);
  v39 = v12;
  v40 = *(v99 + 16);
  v41 = v82;
  v99 += 16;
  v40(v82, v38, v39);
  *&v115 = sub_1B8C24CE8();
  sub_1B8C24808();
  v113 = WitnessTable;
  v114 = MEMORY[0x1E697E5D8];
  v42 = swift_getWitnessTable();
  sub_1B8C24A38();

  (*(v81 + 8))(v23, v20);
  if (qword_1EBAA59A8 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v39, qword_1EBAB3A78);
  v40(v41, v43, v39);
  *&v115 = sub_1B8C24CE8();
  v44 = sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8);
  v111 = v42;
  v112 = v44;
  v45 = swift_getWitnessTable();
  v46 = v83;
  v47 = v98;
  sub_1B8C24AC8();

  (*(v84 + 8))(v47, v24);
  v48 = sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
  v109 = v45;
  v110 = v48;
  v49 = swift_getWitnessTable();
  v50 = v41;
  v51 = v87;
  sub_1B8C24A98();
  (*(v85 + 8))(v46, v27);
  v52 = *(v86 + 20);
  v53 = *MEMORY[0x1E697F468];
  v54 = sub_1B8C24418();
  v55 = v94;
  (*(*(v54 - 8) + 104))(v94 + v52, v53, v54);
  *v55 = a6;
  v55[1] = a6;
  if (qword_1EBAA59B8 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v39, qword_1EBAB3AA8);
  v40(v50, v56, v39);
  v57 = sub_1B8C24CE8();
  sub_1B8C23DB8();
  v58 = v95;
  sub_1B8B7E654(v55, v95);
  v59 = *&v115 * 0.5;
  v60 = v58 + *(v96 + 68);
  sub_1B8B7E654(v55, v60);
  *(v60 + *(sub_1B8C24068() + 20)) = v59;
  v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7078, &qword_1B8C2ACE0) + 36);
  v62 = v116;
  *v61 = v115;
  *(v61 + 16) = v62;
  *(v61 + 32) = v117;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7080, &unk_1B8C2CD20);
  *(v60 + *(v63 + 52)) = v57;
  *(v60 + *(v63 + 56)) = 256;
  v64 = sub_1B8C24F48();
  v66 = v65;
  sub_1B8B7E6B8(v55);
  v67 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7088, &qword_1B8C2ACE8) + 36));
  *v67 = v64;
  v67[1] = v66;
  sub_1B8C24F48();
  v68 = sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50);
  v107 = v49;
  v108 = v68;
  v69 = v91;
  v70 = swift_getWitnessTable();
  sub_1B8B34CFC(&qword_1EBAA7090, &qword_1EBAA7068, &unk_1B8C2CD10);
  v71 = v88;
  sub_1B8C24BF8();
  sub_1B8B284EC(v58);
  (*(v89 + 8))(v51, v69);
  v72 = sub_1B8B34CFC(&qword_1EBAA7098, &qword_1EBAA7070, &qword_1B8C2CD30);
  v105 = v70;
  v106 = v72;
  v73 = v93;
  v74 = swift_getWitnessTable();
  v75 = v90;
  sub_1B8BE21A0(v71, v73, v74);
  v76 = *(v92 + 8);
  v76(v71, v73);
  sub_1B8BE21A0(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_1B8B7E4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x1EEE9AC00])();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  v11();
  sub_1B8BE21A0(v10, a3, a4);
  v14 = *(v6 + 8);
  v14(v10, a3);
  sub_1B8BE21A0(v13, a3, a4);
  return (v14)(v13, a3);
}

uint64_t sub_1B8B7E654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C24078();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B7E6B8(uint64_t a1)
{
  v2 = sub_1B8C24078();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B7E714()
{
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  return *(v0 + 18);
}

void sub_1B8B7E7B4(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;

    sub_1B8B7EBA8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B7E8E8(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B7E9F8(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B7EB08()
{
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  return *(v0 + 17);
}

void sub_1B8B7EBA8()
{
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  v2 = (*(v0 + 16) ^ 1) & 1;
  if (v2 == *(v1 + 17))
  {
    *(v1 + 17) = v2;
    swift_getKeyPath();
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23588();

    v3 = *(v1 + 17);
    v4 = [objc_opt_self() sharedUserDefaults];
    v5 = sub_1B8C25A38();
    v6 = sub_1B8C250F8();
    [v4 setObject:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B7EE5C()
{
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  return *(v0 + 16);
}

uint64_t sub_1B8B7EEFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1B8B7EFFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1B8B7F0D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  *a2 = *(v3 + 18);
  return result;
}

_BYTE *sub_1B8B7F1B0()
{
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  if (*(v1 + 16))
  {
    v2 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1B8C23588();

    v2 = *(v1 + 17) ^ 1;
  }

  v0[18] = 0;
  v3 = v2 & 1;
  v0[16] = v3;
  v0[17] = v3;
  return v0;
}

void sub_1B8B7F2FC()
{
  if (v0[18])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }

  else
  {
    v0[18] = 0;
  }

  if (v0[16] == 1)
  {
    v0[16] = 1;
    sub_1B8B7EBA8();
  }

  else
  {
    v2 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v2);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }

  if (v0[17] == 1)
  {
    v0[17] = 1;
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v3);
    sub_1B8B7FD94(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B7F5B0()
{
  v1 = OBJC_IVAR____TtC8Feedback20OnboardingController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingController()
{
  result = qword_1EBAA70A8;
  if (!qword_1EBAA70A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B7F6A0()
{
  result = sub_1B8C235C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B8B7F754()
{
  result = qword_1EBAA70B8;
  if (!qword_1EBAA70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA70B8);
  }

  return result;
}

uint64_t sub_1B8B7F7A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1B8B7F878@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
  return result;
}

void sub_1B8B7F948()
{
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBAB39E0;
  if (*(qword_1EBAB39E0 + 17))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23578();

    if ((*(v0 + 16) & 1) == 0)
    {
LABEL_5:
      *(v0 + 16) = 0;
      swift_getKeyPath();
      sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
      sub_1B8C23588();

      v2 = *(v0 + 16);
      v3 = [objc_opt_self() sharedUserDefaults];
      v4 = sub_1B8C25A38();
      v5 = sub_1B8C250F8();
      [v3 setObject:v4 forKey:v5];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    *(qword_1EBAB39E0 + 17) = 0;
    swift_getKeyPath();
    sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23588();

    v6 = *(v0 + 17);
    v7 = [objc_opt_self() sharedUserDefaults];
    v8 = sub_1B8C25A38();
    v9 = sub_1B8C250F8();
    [v7 setObject:v8 forKey:v9];

    swift_unknownObjectRelease();
    if ((*(v0 + 16) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v10 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B8B7FD94(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23578();
}

uint64_t sub_1B8B7FD94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B7FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B8B5115C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1B8B7FFCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8B7FFEC, 0, 0);
}

uint64_t sub_1B8B7FFEC()
{
  sub_1B8B8061C(*(v0 + 184), v0 + 136);
  if (*(v0 + 160))
  {
    sub_1B8B4D380((v0 + 136), v0 + 96);
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v1);
    v3 = *(v2 + 32);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_1B8B801A0;
    v6 = *(v0 + 184);

    return v9(v0 + 16, v6, v1, v2);
  }

  else
  {
    sub_1B8B80740(v0 + 136);
    sub_1B8B807A8();
    swift_allocError();
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B8B801A0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1B8B8033C;
  }

  else
  {
    v3 = sub_1B8B802B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8B802B4()
{
  v1 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 57) = *(v0 + 73);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8B8033C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[25];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B8B803A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA70D0, &qword_1B8C2AEE8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8C293F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8C2A740;
  v6 = *(v2 + 104);
  v6(v5 + v4, *MEMORY[0x1E699C2C0], v1);
  v7 = sub_1B8B8A408(v5);
  swift_setDeallocating();
  (*(v2 + 8))(v5 + v4, v1);
  swift_deallocClassInstance();
  *(v0 + 56) = &type metadata for GenmojiDonationDecoder;
  *(v0 + 64) = &off_1F37551C0;
  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8C293F0;
  v6(v8 + v4, *MEMORY[0x1E699C2C8], v1);
  v6(v8 + v4 + v3, *MEMORY[0x1E699C258], v1);
  v6(v8 + v4 + 2 * v3, *MEMORY[0x1E699C320], v1);
  v9 = sub_1B8B8A408(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  *(v0 + 96) = &type metadata for ImagePlaygroundDonationDecoder;
  *(v0 + 104) = &off_1F3759AE8;
  *(v0 + 72) = v9;
  *(v0 + 136) = &type metadata for CatchUpDonationDecoder;
  *(v0 + 144) = &off_1F3759060;
  off_1EBAA70C0 = v0;
  return result;
}

uint64_t sub_1B8B8061C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (qword_1EBAA58E8 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = off_1EBAA70C0;
    v5 = *(off_1EBAA70C0 + 2);
    if (!v5)
    {
      break;
    }

    v6 = 0;
    v7 = off_1EBAA70C0 + 32;
    while (v6 < v4[2])
    {
      sub_1B8B807FC(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      if ((*(v9 + 24))(v2, v8, v9))
      {
        sub_1B8B807FC(v10, a2);
        return __swift_destroy_boxed_opaque_existential_0(v10);
      }

      ++v6;
      result = __swift_destroy_boxed_opaque_existential_0(v10);
      v7 += 40;
      if (v5 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    result = swift_once();
  }

LABEL_7:
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1B8B80740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6270, &qword_1B8C285A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B807A8()
{
  result = qword_1EBAA70C8;
  if (!qword_1EBAA70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA70C8);
  }

  return result;
}

uint64_t sub_1B8B807FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B8B80868()
{
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](0);
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B808AC()
{
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](0);
  return sub_1B8C25AF8();
}

uint64_t getEnumTagSinglePayload for DonationDecoders.Err(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DonationDecoders.Err(_WORD *result, int a2, int a3)
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

unint64_t sub_1B8B809D8()
{
  result = qword_1EBAA70D8;
  if (!qword_1EBAA70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA70D8);
  }

  return result;
}

uint64_t type metadata accessor for DebugSheet()
{
  result = qword_1EBAA70E8;
  if (!qword_1EBAA70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B80AA0()
{
  sub_1B8B80B3C();
  if (v0 <= 0x3F)
  {
    sub_1B8B80B94();
    if (v1 <= 0x3F)
    {
      sub_1B8B38128();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B80B3C()
{
  if (!qword_1EBAA5FB8)
  {
    type metadata accessor for BatchController();
    v0 = sub_1B8C23D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA5FB8);
    }
  }
}

void sub_1B8B80B94()
{
  if (!qword_1EBAA70F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
    v0 = sub_1B8C23D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA70F8);
    }
  }
}

uint64_t sub_1B8B80C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B83104(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1B8B80CE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B83104(&qword_1EBAA6908, type metadata accessor for DebugController);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1B8B80DB4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7108, &qword_1B8C2B030);
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7110, &qword_1B8C2B038);
  v6 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v25 - v7;
  v9 = sub_1B8C242A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) == 1)
  {
    *&v31 = *v1;
  }

  else
  {
    v14 = *v1;

    sub_1B8C25488();
    v15 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v10 + 8))(v13, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  swift_allocBox();
  type metadata accessor for BatchController();
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  v16 = sub_1B8C24F28();
  MEMORY[0x1EEE9AC00](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7120, &qword_1B8C2B048);
  sub_1B8B34CFC(&qword_1EBAA7128, &qword_1EBAA7120, &qword_1B8C2B048);
  sub_1B8C24968();
  sub_1B8C24F48();
  sub_1B8C24088();
  (*(v2 + 32))(v8, v5, v26);
  v17 = &v8[*(v27 + 36)];
  v18 = v36;
  *(v17 + 4) = v35;
  *(v17 + 5) = v18;
  *(v17 + 6) = v37;
  v19 = v32;
  *v17 = v31;
  *(v17 + 1) = v19;
  v20 = v34;
  *(v17 + 2) = v33;
  *(v17 + 3) = v20;
  v21 = v1 + *(type metadata accessor for DebugSheet() + 24);
  v22 = *v21;
  v23 = *(v21 + 1);
  v29 = v22;
  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D88();
  sub_1B8B82A2C();
  sub_1B8B82AE4();
  sub_1B8C24BD8();

  sub_1B8B3433C(v8, &qword_1EBAA7110, &qword_1B8C2B038);
}

uint64_t sub_1B8B8127C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v62 = a2;
  v65 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7150, &qword_1B8C2B058);
  v75 = *(v64 - 8);
  v4 = v75[8];
  v5 = MEMORY[0x1EEE9AC00](v64);
  v74 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v78 = &v59 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v73 = &v59 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v59 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7158, &qword_1B8C2B060);
  v69 = *(v72 - 8);
  v16 = v69[8];
  v17 = MEMORY[0x1EEE9AC00](v72);
  v77 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7160, &qword_1B8C2B068);
  v68 = *(v71 - 8);
  v21 = v68[8];
  v22 = MEMORY[0x1EEE9AC00](v71);
  v70 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v59 - v24;
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v25;
  v84 = v26 & 1;
  v85 = v27;
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AB8, &qword_1B8C27248);
  sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248);
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v28;
  v84 = v29 & 1;
  v85 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7168, &qword_1B8C2B070);
  sub_1B8B34CFC(&qword_1EBAA7170, &qword_1EBAA7168, &qword_1B8C2B070);
  v31 = v20;
  v61 = v20;
  v32 = v62;
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v33;
  v84 = v34 & 1;
  v85 = v35;
  v79 = v32;
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7178, &qword_1B8C2B078);
  sub_1B8B82B50();
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v36;
  v84 = v37 & 1;
  v85 = v38;
  v39 = v67;
  sub_1B8C24EF8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v40;
  v84 = v41 & 1;
  v85 = v42;
  v43 = v63;
  sub_1B8C24EF8();
  v60 = v68[2];
  v44 = v70;
  v45 = v71;
  v60(v70, v66, v71);
  v62 = v69[2];
  v62(v77, v31, v72);
  v46 = v75[2];
  v47 = v73;
  v48 = v64;
  v46(v73, v76, v64);
  v46(v78, v39, v48);
  v46(v74, v43, v48);
  v49 = v65;
  v60(v65, v44, v45);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7188, &qword_1B8C2B080);
  v51 = v72;
  v62(&v49[v50[12]], v77, v72);
  v46(&v49[v50[16]], v47, v48);
  v46(&v49[v50[20]], v78, v48);
  v52 = v74;
  v46(&v49[v50[24]], v74, v48);
  v53 = v75[1];
  v53(v43, v48);
  v53(v67, v48);
  v53(v76, v48);
  v54 = v69[1];
  v55 = v51;
  v54(v61, v51);
  v56 = v68[1];
  v57 = v71;
  v56(v66, v71);
  v53(v52, v48);
  v53(v78, v48);
  v53(v73, v48);
  v54(v77, v55);
  return (v56)(v70, v57);
}

uint64_t sub_1B8B81BB0(uint64_t a1)
{
  v2 = type metadata accessor for DebugSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B82EF8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1B8B82F5C(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_1B8C24DB8();
}

uint64_t sub_1B8B81CDC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DebugSheet() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  return sub_1B8C24D78();
}

uint64_t sub_1B8B81D50@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  result = sub_1B8C249C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B8B81DC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = swift_projectBox();
  (*(v1 + 16))(v5, v8, v0);
  sub_1B8C24F18();
  v9 = *(v1 + 8);
  v9(v5, v0);
  swift_getKeyPath();
  sub_1B8C24F38();

  v9(v7, v0);
  v10 = v14[7];
  v11 = v14[8];
  v12 = v14[9];
  swift_getKeyPath();
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B60, &qword_1B8C29F78);
  sub_1B8C24E58();

  return sub_1B8C24DF8();
}

uint64_t sub_1B8B8200C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DebugSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B8B82EF8(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_1B8B82F5C(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  sub_1B8C24DB8();
  v11 = sub_1B8C24C88();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7178, &qword_1B8C2B078);
  v14 = (a3 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_1B8B82180(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8C24058();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = swift_projectBox();
  (*(v10 + 16))(v13, v14, v9);
  sub_1B8C24F08();
  (*(v10 + 8))(v13, v9);
  v15 = v20;
  swift_getKeyPath();
  v20 = v15;
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v16 = *(v15 + 32);

  sub_1B8B7F2FC();

  v17 = a2 + *(type metadata accessor for DebugSheet() + 20);
  sub_1B8B82CC4(v8);
  MEMORY[0x1B8CC9B00](v5);
  sub_1B8C24048();
  sub_1B8C24E48();
  return sub_1B8B3433C(v8, &qword_1EBAA7100, &qword_1B8C2AFD8);
}

uint64_t sub_1B8B82440()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_1B8C24F08();
  (*(v1 + 8))(v4, v0);
  v6 = v10;
  swift_getKeyPath();
  v10 = v6;
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v7 = *(v6 + 32);

  sub_1B8B7F948();
}

uint64_t sub_1B8B825CC@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  result = sub_1B8C249C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B8B82644@<X0>(uint64_t a1@<X8>)
{

  sub_1B8C24DB8();
  v2 = sub_1B8C24C78();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7178, &qword_1B8C2B078);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_1B8B826DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7118, &qword_1B8C2B040);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_1B8C24F08();
  (*(v1 + 8))(v4, v0);
  v6 = v11;
  swift_getKeyPath();
  v11 = v6;
  sub_1B8B83104(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v7 = *(v6 + 24);

  if (*(v7 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v10 - 2) = v7;
    *(&v10 - 1) = 0;
    v11 = v7;
    sub_1B8B83104(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    sub_1B8C23578();
  }

  else
  {
    sub_1B8B51A10();
  }
}

uint64_t sub_1B8B82968@<X0>(uint64_t a1@<X8>)
{
  sub_1B8C243A8();
  result = sub_1B8C249C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1B8B829C8@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7148, &qword_1B8C2B050);
  sub_1B8C24D58();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_1B8B82A2C()
{
  result = qword_1EBAA7130;
  if (!qword_1EBAA7130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7110, &qword_1B8C2B038);
    sub_1B8B34CFC(&qword_1EBAA7138, &qword_1EBAA7108, &qword_1B8C2B030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7130);
  }

  return result;
}

unint64_t sub_1B8B82AE4()
{
  result = qword_1EBAA7140;
  if (!qword_1EBAA7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7140);
  }

  return result;
}

unint64_t sub_1B8B82B50()
{
  result = qword_1EBAA7180;
  if (!qword_1EBAA7180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7178, &qword_1B8C2B078);
    sub_1B8B34CFC(&qword_1EBAA5AC0, &qword_1EBAA5AB8, &qword_1B8C27248);
    sub_1B8B34CFC(&qword_1EBAA6EB0, &qword_1EBAA6EB8, &qword_1B8C2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7180);
  }

  return result;
}

uint64_t sub_1B8B82CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  sub_1B8B83024(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1B8B83094(v12, a1);
  }

  v14 = *v12;
  sub_1B8C25488();
  v15 = sub_1B8C247B8();
  sub_1B8C23C08();

  sub_1B8C24298();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B8B82E7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24278();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B82EA8(uint64_t *a1)
{
  v1 = *a1;

  return sub_1B8C24288();
}

uint64_t sub_1B8B82EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B82F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B82FC0()
{
  v1 = *(type metadata accessor for DebugSheet() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B8B82180(v2, v3);
}

uint64_t sub_1B8B83024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B83094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7100, &qword_1B8C2AFD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B83104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B8314C()
{
  v1 = *(type metadata accessor for DebugSheet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B8B81CDC(v2);
}

uint64_t FBKInlineThumbsDown.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

void *sub_1B8B83204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[1] = *a1;
  v6 = *(a1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  result = MEMORY[0x1B8CC9B00](v5, v3);
  *a2 = v5[0];
  return result;
}

uint64_t sub_1B8B83264(id *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  return sub_1B8C24E48();
}

uint64_t FBKInlineThumbsDown.feedbackController.setter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsDown.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

void sub_1B8B833D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v6 = *(v2 + 80);
  v5 = *(v2 + 88);
  *(v2 + 32) = v3;
  *(v2 + 40) = v6;
  if (a2)
  {
    v7 = v4;
    sub_1B8C24E48();
  }

  else
  {
    sub_1B8C24E48();
  }

  free(v2);
}

uint64_t FBKInlineThumbsDown.$feedbackController.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v2;
}

uint64_t type metadata accessor for FBKInlineThumbsDown()
{
  result = qword_1EBAA71A8;
  if (!qword_1EBAA71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B83558()
{
  v0 = *(type metadata accessor for FBKInlineThumbsDown() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v1);
}

uint64_t sub_1B8B835B0(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  LODWORD(a1) = *(type metadata accessor for FBKInlineThumbsDown() + 20);
  v10(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v9, v2);
}

uint64_t FBKInlineThumbsDown.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for FBKInlineThumbsDown() + 20);
  (*(v3 + 16))(v6, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineThumbsDown.subject.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineThumbsDown();
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

void sub_1B8B83990(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    v7 = *v2;
    v8 = v2[1];
    (*(v8 + 16))(*(*a1 + 16), v6, *v2);
    sub_1B8C24E48();
    sub_1B8B83AD8(v3);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v9 = *(*a1 + 24);
    sub_1B8C24E48();
    sub_1B8B83AD8(v3);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1B8B83A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B83AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B83B58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FBKInlineThumbsDown() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v3);
}

uint64_t FBKInlineThumbsDown.disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsDown() + 24));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v6, v4);
  return v6;
}

void *sub_1B8B83C1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsDown() + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  result = MEMORY[0x1B8CC9B00](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_1B8B83C98(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for FBKInlineThumbsDown() + 24));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

uint64_t FBKInlineThumbsDown.disabled.setter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsDown() + 24));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsDown.disabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FBKInlineThumbsDown() + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B83E40;
}

void sub_1B8B83E40(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_1B8C24E48();

  free(v1);
}

uint64_t FBKInlineThumbsDown.$disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsDown() + 24));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  return v3;
}

uint64_t sub_1B8B83F24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsDown() + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B84788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8B83FB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B84780;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineThumbsDown() + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3);
  result = sub_1B8B30A44(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineThumbsDown.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsDown() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1B8B247D4(*v1);
  return v2;
}

uint64_t FBKInlineThumbsDown.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineThumbsDown() + 28));
  v6 = v5[1];
  result = sub_1B8B30A44(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineThumbsDown.init(feedbackController:subject:disabled:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for FBKInlineThumbsDown();
  v18 = (a9 + v17[7]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1B8B841EC(a4, a9 + v17[5]);
  v20 = a9 + v17[6];
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7;
  *v18 = a8;
  v18[1] = a10;
  return result;
}

uint64_t sub_1B8B841EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double FBKInlineThumbsDown.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E699C1C8], v8);
  v13 = type metadata accessor for FBKInlineThumbsDown();
  v14 = v1 + v13[5];
  sub_1B8C24E68();
  v15 = (v2 + v13[7]);
  v16 = *v15;
  v34 = v15[1];
  v35 = v16;
  *&v40[0] = *v2;
  *(v40 + 8) = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v37 = v38;
  v36 = v39;
  v17 = (v2 + v13[6]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  *&v40[0] = v18;
  *(&v40[0] + 1) = v19;
  LOBYTE(v40[1]) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  v32 = v39;
  v33 = v38;
  v31 = BYTE8(v39);
  v20 = type metadata accessor for FBKInlineViewButton();
  v21 = v20[6];
  v30 = v20[7];
  v22 = (a1 + v21);
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA71A0, &qword_1B8C2C220);
  sub_1B8C24D58();
  v23 = *&v40[0];
  (*(v9 + 16))(a1, v12, v8);
  sub_1B8B83A68(v7, a1 + v20[5]);
  v25 = v34;
  v24 = v35;
  *v22 = v35;
  v22[1] = v25;
  v38 = 0;
  sub_1B8B247D4(v24);
  sub_1B8C24D58();
  sub_1B8B83AD8(v7);
  (*(v9 + 8))(v12, v8);

  *(a1 + v30) = v40[0];
  v26 = a1 + v20[8];
  *v26 = v37;
  result = *&v36;
  *(v26 + 8) = v36;
  v28 = a1 + v20[9];
  v29 = v32;
  *v28 = v33;
  *(v28 + 8) = v29;
  *(v28 + 16) = v31;
  return result;
}

void sub_1B8B84598()
{
  sub_1B8B84684(319, &qword_1EDC85640, type metadata accessor for FBKEvaluationController);
  if (v0 <= 0x3F)
  {
    sub_1B8B84684(319, &qword_1EBAA71B8, MEMORY[0x1E699C248]);
    if (v1 <= 0x3F)
    {
      sub_1B8B846D8();
      if (v2 <= 0x3F)
      {
        sub_1B8B38178();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8B84684(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C24E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8B846D8()
{
  if (!qword_1EBAA71C0)
  {
    v0 = sub_1B8C24E88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA71C0);
    }
  }
}

unint64_t sub_1B8B84728()
{
  result = qword_1EBAA71C8;
  if (!qword_1EBAA71C8)
  {
    type metadata accessor for FBKInlineViewButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71C8);
  }

  return result;
}

uint64_t sub_1B8B84790(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B8C24FD8();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B8C25008();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B622C8();
  v16 = sub_1B8C25538();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2 & 1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  aBlock[4] = sub_1B8B85158;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);
  sub_1B8B85180(a1, a2 & 1);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B8518C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v15, v11, v18);
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

uint64_t sub_1B8B84A70(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 16))
    {
      if (qword_1EBAA5970 != -1)
      {
        swift_once();
      }

      v9 = sub_1B8C23C38();
      __swift_project_value_buffer(v9, qword_1EBAB3A18);
      v5 = sub_1B8C23C18();
      v10 = sub_1B8C25458();
      if (!os_log_type_enabled(v5, v10))
      {
        v11 = 1;
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B8B22000, v5, v10, "Should show batch UI? Yes because score is zero but there are donations", v7, 2u);
      v11 = 1;
      goto LABEL_16;
    }

    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAB3A18);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25458();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Should show batch UI? NO because score is zero AND there are no donations";
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_19;
  }

  if (qword_1EBAA5970 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAB3A18);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25458();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_17;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  v8 = "Should show batch UI? NO because score is zero AND failed to fetch donations";
LABEL_15:
  _os_log_impl(&dword_1B8B22000, v5, v6, v8, v7, 2u);
  v11 = 0;
LABEL_16:
  MEMORY[0x1B8CCB0E0](v7, -1, -1);
LABEL_19:

  return a3(v11);
}

uint64_t sub_1B8B84CE8(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for ScoreController();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B8518C(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *(v7 + 24) = *(v8 + 24);
  swift_getKeyPath();
  sub_1B8B8518C(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  if (*(v7 + 24) < 1)
  {
    sub_1B8C23688();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    MEMORY[0x1B8CC8310](1, 1, 0, sub_1B8B85140, v13);
  }

  else
  {
    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8C23C38();
    __swift_project_value_buffer(v9, qword_1EBAB3A18);

    v10 = sub_1B8C23C18();
    v11 = sub_1B8C25458();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_getKeyPath();
      sub_1B8C23588();

      *(v12 + 4) = *(v7 + 24);

      _os_log_impl(&dword_1B8B22000, v10, v11, "Should show batch UI? Yes because score is > 0. Raw score [%ld]", v12, 0xCu);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
    }

    else
    {
    }

    a1(1);
  }
}

uint64_t _s8Feedback29BatchEvaluationViewControllerC010shouldShowB2UI10completionyySbc_tFZ_0(void (*a1)(uint64_t), uint64_t a2)
{
  if (MEMORY[0x1B8CCA870]())
  {

    return sub_1B8B84CE8(a1, a2);
  }

  else
  {
    if (qword_1EBAA5970 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAB3A18);
    v6 = sub_1B8C23C18();
    v7 = sub_1B8C25458();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B8B22000, v6, v7, "BatchUI disabled", v8, 2u);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
    }

    return (a1)(0);
  }
}

void sub_1B8B8514C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1B8B85180(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1B8B8518C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B851D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    if (swift_dynamicCast())
    {
      v2 = 3;
      if (v3 == 4)
      {
        v2 = 6;
      }

      if (v3)
      {
        return v2;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t BatchStatusView.Config.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_1B8C251B8();
  sub_1B8C25AD8();
  if (v4)
  {
    sub_1B8C251B8();
  }

  MEMORY[0x1B8CCA790](v5);
  sub_1B8C25AD8();
  if (v7)
  {
    sub_1B8C251B8();
  }

  return sub_1B8C25AD8();
}

uint64_t BatchStatusView.Config.hashValue.getter()
{
  sub_1B8C25AB8();
  BatchStatusView.Config.hash(into:)();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B8536C()
{
  sub_1B8C25AB8();
  BatchStatusView.Config.hash(into:)();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B853B0()
{
  sub_1B8C25AB8();
  BatchStatusView.Config.hash(into:)();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B853EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1B8C242A8();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  sub_1B8C25368();
  v4[17] = sub_1B8C25358();
  v9 = sub_1B8C25328();
  v4[18] = v9;
  v4[19] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B8B854E0, v9, v8);
}

uint64_t sub_1B8B854E0()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 64);
  *(v0 + 80) = *(v0 + 24);
  *(v0 + 32) = *(v1 + 64);
  *(v0 + 73) = 1;
  sub_1B8B34450(v0 + 80, v0 + 88, &qword_1EBAA7210, &qword_1B8C2B558);
  *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
  sub_1B8C24D78();
  v2 = *(v1 + 88);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 72) = v2;
  v3 = *(v0 + 64);
  LOBYTE(v1) = v2;

  if ((v1 & 1) == 0)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    sub_1B8C25488();
    v7 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();
    sub_1B8B3433C(v0 + 64, &qword_1EBAA7218, qword_1B8C2B560);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 96);
  }

  *(v0 + 168) = v3;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_1B8B856B0;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B856B0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1B8B857F4, v5, v4);
}

uint64_t sub_1B8B857F4()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  *(v0 + 48) = *(v0 + 16);
  *(v0 + 74) = 0;
  sub_1B8C24D78();
  sub_1B8B3433C(v0 + 16, &qword_1EBAA5EE0, &qword_1B8C27CA8);

  v4 = *(v0 + 8);

  return v4();
}

__n128 BatchStatusView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v36[2] = v1[2];
  v36[3] = v3;
  v37[0] = v1[4];
  *(v37 + 9) = *(v1 + 73);
  v4 = v1[1];
  v36[0] = *v1;
  v36[1] = v4;
  v5 = sub_1B8C24468();
  v34 = 0;
  sub_1B8B85B64(v36, &v20);
  v48 = v30;
  v49 = v31;
  v50[0] = v32[0];
  *(v50 + 9) = *(v32 + 9);
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v38 = v20;
  v39 = v21;
  v51[10] = v30;
  v51[11] = v31;
  v52[0] = v32[0];
  *(v52 + 9) = *(v32 + 9);
  v51[6] = v26;
  v51[7] = v27;
  v51[8] = v28;
  v51[9] = v29;
  v51[2] = v22;
  v51[3] = v23;
  v51[4] = v24;
  v51[5] = v25;
  v51[0] = v20;
  v51[1] = v21;
  sub_1B8B34450(&v38, v19, &qword_1EBAA71D0, &qword_1B8C2B2A8);
  sub_1B8B3433C(v51, &qword_1EBAA71D0, &qword_1B8C2B2A8);
  *&v33[167] = v48;
  *&v33[183] = v49;
  *&v33[199] = v50[0];
  *&v33[208] = *(v50 + 9);
  *&v33[103] = v44;
  *&v33[119] = v45;
  *&v33[135] = v46;
  *&v33[151] = v47;
  *&v33[39] = v40;
  *&v33[55] = v41;
  *&v33[71] = v42;
  *&v33[87] = v43;
  *&v33[7] = v38;
  *&v33[23] = v39;
  v6 = v34;
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v35[55] = v23;
  *&v35[71] = v24;
  *&v35[87] = v25;
  *&v35[103] = v26;
  *&v35[7] = v20;
  *&v35[23] = v21;
  *&v35[39] = v22;
  v7 = *&v33[176];
  *(a1 + 177) = *&v33[160];
  *(a1 + 193) = v7;
  v8 = *&v33[208];
  *(a1 + 209) = *&v33[192];
  *(a1 + 225) = v8;
  v9 = *&v33[112];
  *(a1 + 113) = *&v33[96];
  *(a1 + 129) = v9;
  v10 = *&v33[144];
  *(a1 + 145) = *&v33[128];
  *(a1 + 161) = v10;
  v11 = *&v33[48];
  *(a1 + 49) = *&v33[32];
  *(a1 + 65) = v11;
  v12 = *&v33[80];
  *(a1 + 81) = *&v33[64];
  *(a1 + 97) = v12;
  v13 = *&v33[16];
  *(a1 + 17) = *v33;
  *(a1 + 33) = v13;
  result = *&v35[64];
  v15 = *&v35[96];
  *(a1 + 321) = *&v35[80];
  *(a1 + 337) = v15;
  v16 = *&v35[16];
  *(a1 + 241) = *v35;
  v17 = *&v35[32];
  v18 = *&v35[48];
  *(a1 + 257) = v16;
  *(a1 + 273) = v17;
  *a1 = v5;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v6;
  *(a1 + 352) = *&v35[111];
  *(a1 + 289) = v18;
  *(a1 + 305) = result;
  return result;
}

uint64_t sub_1B8B85B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v61 - v6;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 24);
  v69 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  LODWORD(v65) = *(a1 + 56);
  if (v12)
  {
    v13 = *(a1 + 40);

    v14 = sub_1B8C24D08();
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_12;
      }

LABEL_8:
      v77 = v14;
      v15 = sub_1B8C24C78();
      goto LABEL_13;
    }

LABEL_10:
    v77 = v14;
    v15 = sub_1B8C24CC8();
    goto LABEL_13;
  }

  if (!v11)
  {
    v14 = sub_1B8C24D08();
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    v14 = sub_1B8C24D08();
    goto LABEL_8;
  }

  v14 = sub_1B8C24D08();
LABEL_12:
  v77 = v14;
  v15 = sub_1B8C24C68();
LABEL_13:
  v76 = v15;
  v16 = sub_1B8C248C8();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v75 = sub_1B8C24908();
  sub_1B8B3433C(v7, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  *&v84[0] = v9;
  *(&v84[0] + 1) = v8;
  sub_1B8B34CA8();

  v17 = sub_1B8C249E8();
  v19 = v18;
  v21 = v20;
  sub_1B8C24938();
  v22 = sub_1B8C249B8();
  v71 = v23;
  v72 = v22;
  LODWORD(v64) = v24;
  v73 = v25;

  sub_1B8B34060(v17, v19, v21 & 1);

  v70 = swift_getKeyPath();
  if (v10)
  {
    *&v84[0] = v69;
    *(&v84[0] + 1) = v10;

    v26 = sub_1B8C249E8();
    v28 = v27;
    v30 = v29;
    *&v84[0] = sub_1B8C24C98();
    v31 = sub_1B8C24998();
    v68 = v32;
    v69 = v31;
    v34 = v33;
    *(&v67 + 1) = v35;
    sub_1B8B34060(v26, v28, v30 & 1);

    *&v66 = swift_getKeyPath();
    v36 = sub_1B8C24898();
    v37 = swift_getKeyPath();
    LOBYTE(v84[0]) = v34 & 1;
    *&v67 = v34 & 1;
    *(&v66 + 1) = 1;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v67 = 0uLL;
    v66 = 0uLL;
    v37 = 0;
    v36 = 0;
  }

  if (v65)
  {
    v65 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v42 = [objc_opt_self() mainBundle];
    v65 = sub_1B8C23348();
    v44 = v43;

    v84[0] = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5EE0, &qword_1B8C27CA8);
    sub_1B8C24D68();
    v39 = LOBYTE(v82[0]);
    v41 = swift_allocObject();
    v45 = *(a1 + 48);
    v41[3] = *(a1 + 32);
    v41[4] = v45;
    v41[5] = *(a1 + 64);
    *(v41 + 89) = *(a1 + 73);
    v46 = *(a1 + 16);
    v41[1] = *a1;
    v41[2] = v46;
    sub_1B8B86840(a1, v84);
    v38 = v44;

    v40 = sub_1B8B86838;
  }

  v81 = 1;
  v80 = v64 & 1;
  v47 = v64 & 1;
  v62 = v64 & 1;
  *&v82[0] = v69;
  *(&v82[0] + 1) = v68;
  v82[1] = v67;
  v82[2] = v66;
  *&v83 = v37;
  v63 = v36;
  *(&v83 + 1) = v36;
  *&v79[55] = v83;
  *&v79[39] = v66;
  *&v79[23] = v67;
  *&v79[7] = v82[0];
  v78 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v49 = v76;
  v48 = v77;
  *(a2 + 16) = v77;
  *(a2 + 24) = v49;
  v76 = v49;
  v77 = v48;
  v50 = v75;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v50;
  v51 = v71;
  v52 = v72;
  *(a2 + 48) = v72;
  *(a2 + 56) = v51;
  v64 = v37;
  *(a2 + 64) = v47;
  v53 = v70;
  *(a2 + 72) = v73;
  *(a2 + 80) = v53;
  *(a2 + 88) = 1;
  v54 = *&v79[16];
  *(a2 + 89) = *v79;
  v55 = *&v79[32];
  v56 = *&v79[48];
  *(a2 + 152) = *&v79[63];
  *(a2 + 160) = 0;
  *(a2 + 137) = v56;
  *(a2 + 121) = v55;
  *(a2 + 105) = v54;
  *(a2 + 168) = 1;
  v57 = v65;
  *(a2 + 176) = v65;
  *(a2 + 184) = v38;
  *(a2 + 192) = v39;
  *(a2 + 200) = v40;
  *(a2 + 208) = v41;
  *(a2 + 216) = 0;

  v58 = v52;
  v59 = v71;
  LOBYTE(v50) = v62;
  sub_1B8B34694(v58, v71, v62);

  sub_1B8B34450(v82, v84, &qword_1EBAA7208, &qword_1B8C2B540);
  sub_1B8B86878(v57, v38);
  sub_1B8B868BC(v57, v38);
  sub_1B8B868BC(v57, v38);
  *&v84[0] = v69;
  *(&v84[0] + 1) = v68;
  v84[1] = v67;
  v84[2] = v66;
  v85 = v64;
  v86 = v63;
  sub_1B8B3433C(v84, &qword_1EBAA7208, &qword_1B8C2B540);
  sub_1B8B34060(v72, v59, v50);
}

uint64_t sub_1B8B86250(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13[-v4];
  sub_1B8C25388();
  v6 = sub_1B8C253A8();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1B8C25368();
  sub_1B8B86840(a1, v13);
  v7 = sub_1B8C25358();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a1[3];
  *(v8 + 64) = a1[2];
  *(v8 + 80) = v10;
  *(v8 + 96) = a1[4];
  *(v8 + 105) = *(a1 + 73);
  v11 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v11;
  sub_1B8BE33EC(0, 0, v5, &unk_1B8C2B550, v8);
}

uint64_t _s8Feedback15BatchStatusViewV6ConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    if (v2 == v8 && v3 == v7)
    {
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v13 = sub_1B8C25A08();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_13:
    if (v4 != v9)
    {
      return result;
    }

LABEL_14:
    if (v6)
    {
      if (!v10 || (v5 != v11 || v6 != v10) && (sub_1B8C25A08() & 1) == 0)
      {
        return 0;
      }

      return v15 ^ v14 ^ 1u;
    }

    if (!v10)
    {
      return v15 ^ v14 ^ 1u;
    }

    return 0;
  }

  result = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1B8B864E8()
{
  result = qword_1EBAA71D8;
  if (!qword_1EBAA71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71D8);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B8B86588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1B8B865D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B86638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B8B86680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B866E0()
{
  result = qword_1EBAA71E0;
  if (!qword_1EBAA71E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA71E8, &qword_1B8C2B458);
    sub_1B8B8676C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71E0);
  }

  return result;
}

unint64_t sub_1B8B8676C()
{
  result = qword_1EBAA71F0;
  if (!qword_1EBAA71F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA71F8, &qword_1B8C2B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA71F0);
  }

  return result;
}

unint64_t sub_1B8B867E4()
{
  result = qword_1EBAA7200;
  if (!qword_1EBAA7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7200);
  }

  return result;
}

uint64_t sub_1B8B86878(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B8B868BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B8B86900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B8B5115C;

  return sub_1B8B853EC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1B8B869B0(uint64_t result, size_t *a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v4 = *(result + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    do
    {
      for (i = v7; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v9 = sub_1B8C23498();
        v11 = *(v9 - 8);
        result = v9 - 8;
        v10 = v11;
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = sub_1B8B86C28(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, a2, &v13);
        if (v2)
        {

          return v3;
        }

        if (v13)
        {
          break;
        }

        if (v7 == v4)
        {
          return v3;
        }
      }

      MEMORY[0x1B8CC9F70](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B8C252E8();
      }

      result = sub_1B8C25308();
      v3 = v14;
    }

    while (v7 != v4);
  }

  return v3;
}

uint64_t sub_1B8B86B10()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7220);
  __swift_project_value_buffer(v0, qword_1EBAA7220);
  return sub_1B8C23C28();
}

size_t FBKFeedbackForm.addSandboxExtensionToURLs()()
{
  v7 = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v4 = sub_1B8B869B0(v3, &v7);

  v5 = *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments);
  *(v0 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_sandboxExtensionAttachments) = v4;

  return v7;
}

uint64_t sub_1B8B86C28@<X0>(uint64_t a1@<X0>, size_t *a2@<X1>, void *a3@<X8>)
{
  v38 = a2;
  v40 = a3;
  v37 = type metadata accessor for URLError();
  v39 = *(v37 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v35 = a1;
  v12(v11, a1, v7);
  v13 = type metadata accessor for SandboxExtensionURL();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v14[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
  *v16 = 0;
  *(v16 + 1) = 0;
  v12(&v14[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url], v11, v7);
  v42.receiver = v14;
  v42.super_class = v13;
  v17 = objc_msgSendSuper2(&v42, sel_init);
  v18 = sub_1B8B86FB8();
  v20 = (v8 + 8);
  if (v3)
  {

    (*v20)(v11, v7);
    v21 = v36;
    v12(v36, v35, v7);
    v43 = v3;
    v22 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    swift_dynamicCast();
    v23 = v38;
    *(v21 + *(v37 + 20)) = v41;
    v24 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B8B5D534(0, v24[2] + 1, 1, v24);
      *v23 = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      *v23 = sub_1B8B5D534(v26 > 1, v27 + 1, 1, v24);
    }

    v28 = *v23;
    v28[2] = v27 + 1;
    result = sub_1B8B88C0C(v21, v28 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27);
    v17 = 0;
  }

  else
  {
    v30 = v18;
    v31 = v19;
    (*v20)(v11, v7);
    v32 = &v17[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
    v33 = *&v17[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8];
    *v32 = v30;
    v32[1] = v31;
  }

  *v40 = v17;
  return result;
}

uint64_t sub_1B8B86FB8()
{
  v2 = sub_1B8C23408();
  if (v1)
  {
  }

  else if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
    sub_1B8C23438();
    return v14;
  }

  if (qword_1EBAA58F0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7220);
  v5 = v0;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_1B8C23468();
    v12 = sub_1B8B5DD48(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B8B22000, v6, v7, "Cannot generate sandbox extension. URL is not reachable at path: [%s]", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  sub_1B8B7B4F8();
  swift_allocError();
  *v13 = 0;
  return swift_willThrow();
}

uint64_t sub_1B8B871B8@<X0>(uint64_t *a1@<X8>)
{
  result = *MEMORY[0x1E69E9BA8];
  if (*MEMORY[0x1E69E9BA8])
  {
    sub_1B8C251F8();
    v3 = *MEMORY[0x1E69E9BE0];
    sub_1B8C25188();

    v4 = sandbox_extension_issue_file();

    if (v4)
    {
      v5 = sub_1B8C251F8();
      v7 = v6;
      result = MEMORY[0x1B8CCB0E0](v4, -1, -1);
      *a1 = v5;
      a1[1] = v7;
    }

    else
    {
      sub_1B8B7B4F8();
      swift_allocError();
      *v8 = 3;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B8B872A4()
{
  if (v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state + 8] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8];
    if (v1)
    {
      v2 = *&v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
      v3 = qword_1EBAA58F0;
      v4 = *&v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8];

      if (v3 != -1)
      {
        swift_once();
      }

      v5 = sub_1B8C23C38();
      __swift_project_value_buffer(v5, qword_1EBAA7220);
      v6 = v0;
      v7 = sub_1B8C23C18();
      v8 = sub_1B8C25468();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = v15;
        *v9 = 136315138;
        v10 = sub_1B8C23468();
        v12 = v2;
        v13 = sub_1B8B5DD48(v10, v11, &v16);

        *(v9 + 4) = v13;
        v2 = v12;
        _os_log_impl(&dword_1B8B22000, v7, v8, "Consuming Sandbox Extension for url %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
        MEMORY[0x1B8CCB0E0](v9, -1, -1);
      }

      sub_1B8B87544(v2, v1, v6);
    }

    else
    {
      sub_1B8B886B4();
      swift_allocError();
      *v14 = 0;
      *(v14 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8B874C0(uint64_t a1, uint64_t a2)
{
  result = sandbox_extension_consume();
  if (result == -1)
  {
    v5 = MEMORY[0x1B8CC8910]();
    sub_1B8B886B4();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v4 = a2 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state;
    *v4 = result;
    *(v4 + 8) = 0;
  }

  return result;
}

void sub_1B8B87544(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v4 = sandbox_extension_consume();
    if (v4 == -1)
    {
      v6 = MEMORY[0x1B8CC8910]();
      sub_1B8B886B4();
      swift_allocError();
      *v7 = v6;
      *(v7 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      v5 = &a3[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
      *v5 = v4;
      v5[8] = 0;
    }
  }

  else
  {
    sub_1B8C257D8();
  }
}

void sub_1B8B87640()
{
  v1 = &v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  if (v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state + 8])
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    if (qword_1EBAA58F0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EBAA7220);
    v4 = v0;
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25468();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_1B8C23468();
      v11 = sub_1B8B5DD48(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1B8B22000, v5, v6, "Releasing Sandbox Extension for url %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
      MEMORY[0x1B8CCB0E0](v7, -1, -1);
    }

    v12 = sandbox_extension_release();
    if (v12 == sub_1B8C23C58())
    {
      *v1 = 0;
      v1[8] = 1;
    }

    else
    {
      v13 = MEMORY[0x1B8CC8910]();
      sub_1B8B886B4();
      swift_allocError();
      *v14 = v13;
      *(v14 + 4) = 0;
      swift_willThrow();
    }
  }
}

void sub_1B8B8782C(void *a1)
{
  v2 = v1;
  v4 = sub_1B8C233E8();
  v5 = sub_1B8C250F8();
  [a1 encodeObject:v4 forKey:v5];

  if (*(v2 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8))
  {
    v6 = *(v2 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken);

    v7 = sub_1B8C250F8();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B8C250F8();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

uint64_t sub_1B8B879E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7107189;
  }

  else
  {
    v4 = 0x54786F62646E6173;
  }

  if (v3)
  {
    v5 = 0xEC0000006E656B6FLL;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7107189;
  }

  else
  {
    v6 = 0x54786F62646E6173;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xEC0000006E656B6FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B8C25A08();
  }

  return v9 & 1;
}

uint64_t sub_1B8B87A8C()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B87B10()
{
  *v0;
  sub_1B8C251B8();
}

uint64_t sub_1B8B87B80()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B87C00@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8C25908();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B8B87C60(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x54786F62646E6173;
  }

  v3 = 0xEC0000006E656B6FLL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B8B87CA0()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 0x54786F62646E6173;
  }

  *v0;
  return result;
}

uint64_t sub_1B8B87CDC@<X0>(char *a1@<X8>)
{
  v2 = sub_1B8C25908();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1B8B87D4C(uint64_t a1)
{
  v2 = sub_1B8B8861C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8B87D88(uint64_t a1)
{
  v2 = sub_1B8B8861C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1B8B87DF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SandboxExtensionURL();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8B87EAC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7278, &qword_1B8C2B628);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8B8861C();
  sub_1B8C25B18();
  v12 = *(v4 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken);
  v13 = *(v4 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken + 8);
  v15[15] = 0;

  sub_1B8C25998();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v15[14] = 1;
    sub_1B8C23498();
    sub_1B8B88670(&qword_1EBAA7280);
    sub_1B8C259C8();
    return (*(v7 + 8))(v10, v6);
  }
}

void *sub_1B8B88094(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1B8C23498();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7260, &qword_1B8C2B620);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = v3 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state;
  *v13 = 0;
  v13[8] = 1;
  v14 = (v3 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken);
  *v14 = 0;
  v14[1] = 0;
  v16 = a1[3];
  v15 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B8B8861C();
  sub_1B8C25B08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    v23 = v14[1];

    type metadata accessor for SandboxExtensionURL();
    v24 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v5;
    v19 = v29;
    v18 = v30;
    v33 = 0;
    v20 = sub_1B8C25938();
    v21 = v14[1];
    *v14 = v20;
    v14[1] = v22;

    v33 = 1;
    sub_1B8B88670(&qword_1EBAA7270);
    sub_1B8C25968();
    (*(v28 + 32))(v3 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, v8, v17);
    v27 = type metadata accessor for SandboxExtensionURL();
    v32.receiver = v3;
    v32.super_class = v27;
    v3 = objc_msgSendSuper2(&v32, sel_init);
    (*(v19 + 8))(v12, v18);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  return v3;
}

void *sub_1B8B883C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SandboxExtensionURL());
  result = sub_1B8B88094(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B8B8843C(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0xD00000000000001ALL;
  }

  sub_1B8C257E8();

  v1 = sub_1B8C259E8();
  MEMORY[0x1B8CC9EB0](v1);

  return 0xD000000000000019;
}

uint64_t type metadata accessor for SandboxExtensionURL()
{
  result = qword_1EBAA7250;
  if (!qword_1EBAA7250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B88568()
{
  result = sub_1B8C23498();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B8B8861C()
{
  result = qword_1EBAA7268;
  if (!qword_1EBAA7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7268);
  }

  return result;
}

uint64_t sub_1B8B88670(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B8C23498();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8B886B4()
{
  result = qword_1EBAA7288;
  if (!qword_1EBAA7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7288);
  }

  return result;
}

void sub_1B8B88724(void *a1, uint64_t a2, size_t *a3)
{
  if (*(a1 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state + 8) == 1)
  {
    v28[9] = v4;
    v28[10] = v5;
    if (qword_1EBAA58F0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B8C23C38();
    __swift_project_value_buffer(v7, qword_1EBAA7220);
    v8 = a1;
    v9 = sub_1B8C23C18();
    v10 = sub_1B8C25468();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28[0] = v12;
      *v11 = 136315138;
      v13 = sub_1B8C23468();
      v15 = sub_1B8B5DD48(v13, v14, v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1B8B22000, v9, v10, "Will consume Sandbox Extension for url %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CCB0E0](v12, -1, -1);
      MEMORY[0x1B8CCB0E0](v11, -1, -1);
    }

    sub_1B8B872A4();
    if (v3)
    {
      v16 = v3;
      v17 = sub_1B8C23C18();
      v18 = sub_1B8C25478();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28[0] = v20;
        *v19 = 136315138;
        v21 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v22 = sub_1B8C25178();
        v24 = sub_1B8B5DD48(v22, v23, v28);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_1B8B22000, v17, v18, "Failed to access sandbox extension: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1B8CCB0E0](v20, -1, -1);
        MEMORY[0x1B8CCB0E0](v19, -1, -1);
      }

      sub_1B8B7B4F8();
      swift_allocError();
      *v25 = 4;
      swift_willThrow();
    }

    else
    {
      sub_1B8C20C80(v8 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, a2, a3);
      sub_1B8B87640();
    }
  }
}