uint64_t sub_25BEE4608()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BEE4640()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BEE4684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BEE46F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25BEE478C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NewsChannelLogoCollection();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25BEE4838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NewsChannelLogoCollection();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25BEE48DC()
{
  MEMORY[0x25F881F60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BEE4914()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BEE4958()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BEE4990(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_25BEF80D8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_25BEF8098();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for NewsChannel();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_25BEE4B74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25BEF80D8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_25BEF8098();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for NewsChannel();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25BEE4D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BEE654C();
  v7 = v6;
  v8 = *(*(v6 - 8) + 48);
  v9 = a1 + *(a3 + 20);

  return v8(v9, a2, v7);
}

uint64_t sub_25BEE4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BEE654C();
  v8 = v7;
  v9 = *(*(v7 - 8) + 56);
  v10 = a1 + *(a4 + 20);

  return v9(v10, a2, a2, v8);
}

uint64_t sub_25BEE4EF4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25BEE4F0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EngagementFeatureSettings();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  result = sub_25BEE56A8(&qword_27FBE8D50, type metadata accessor for EngagementFeatureSettings);
  *a1 = v2;
  a1[1] = result;
  return result;
}

unint64_t sub_25BEE4F84@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for FeatureAvailability;
  result = sub_25BEE512C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25BEE4FEC()
{
  sub_25BEF8488();
  sub_25BEE50D0(0, &qword_281558178);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE50D0(0, qword_281557760);
  sub_25BEF84F8();
}

uint64_t sub_25BEE50D0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25BEE512C()
{
  result = qword_27FBE8D48;
  if (!qword_27FBE8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE8D48);
  }

  return result;
}

uint64_t sub_25BEE5188(uint64_t a1, id *a2)
{
  result = sub_25BEF8A78();
  *a2 = 0;
  return result;
}

uint64_t sub_25BEE5200(uint64_t a1, id *a2)
{
  v3 = sub_25BEF8A88();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25BEE5280@<X0>(uint64_t *a1@<X8>)
{
  sub_25BEF8A98();
  v2 = sub_25BEF8A68();

  *a1 = v2;
  return result;
}

uint64_t sub_25BEE52C4()
{
  v1 = *v0;
  v2 = sub_25BEF8A98();
  v3 = MEMORY[0x25F8817B0](v2);

  return v3;
}

uint64_t sub_25BEE5300()
{
  v1 = *v0;
  sub_25BEF8A98();
  sub_25BEF8AA8();
}

uint64_t sub_25BEE5354()
{
  v1 = *v0;
  sub_25BEF8A98();
  sub_25BEF8D38();
  sub_25BEF8AA8();
  v2 = sub_25BEF8D58();

  return v2;
}

uint64_t sub_25BEE53C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25BEF8A98();
  v6 = v5;
  if (v4 == sub_25BEF8A98() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25BEF8CD8();
  }

  return v9 & 1;
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27FBE8F98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBE8F98);
    }
  }
}

uint64_t sub_25BEE54A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25BEF8A68();

  *a2 = v5;
  return result;
}

uint64_t sub_25BEE54E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25BEF8A98();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25BEE5514(uint64_t a1)
{
  v2 = sub_25BEE56A8(&qword_27FBE9710, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_25BEE56A8(&unk_27FBE8FC0, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25BEE56A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BEE57D8@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = swift_allocObject();
  a4[3] = v7;
  result = sub_25BEE5A4C(a2, a3);
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_25BEE58BC()
{
  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_281558148);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_281558140);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_2815581B0);
  sub_25BEF84F8();
}

uint64_t sub_25BEE59F0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25BEE5A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BEE5A94()
{
  sub_25BEF8D38();
  MEMORY[0x25F881A30](0);
  return sub_25BEF8D58();
}

uint64_t sub_25BEE5B00()
{
  sub_25BEF8D38();
  MEMORY[0x25F881A30](0);
  return sub_25BEF8D58();
}

void sub_25BEE5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);
  v12 = swift_allocObject();
  v12[2] = sub_25BEE5F28;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v14[4] = sub_25BEE5F60;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_25BEE5DA0;
  v14[3] = &block_descriptor;
  v13 = _Block_copy(v14);

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_25BEE5C80(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    v8 = [swift_unknownObjectRetain() articleRecirculationConfigJSON];
    if (v8)
    {
      v9 = v8;
      v10 = sub_25BEF8A98();
      v12 = v11;

      a3(v10, v12);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v13 = a2;
    (a5)(a2);
    v14 = a2;
  }

  else
  {
    sub_25BEE5F84();
    v15 = swift_allocError();
    a5();
    v14 = v15;
  }
}

uint64_t sub_25BEE5DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BEE5E20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25BEE5E7C()
{
  v1 = *v0;
  sub_25BEE5ED8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_25BEF8548();
}

void sub_25BEE5ED8()
{
  if (!qword_27FBE9350)
  {
    v0 = sub_25BEF8558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE9350);
    }
  }
}

uint64_t sub_25BEE5F28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BEE5F84()
{
  result = qword_27FBE9358;
  if (!qword_27FBE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9358);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleRecirculationConfigurationService.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ArticleRecirculationConfigurationService.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_25BEE60C4()
{
  result = qword_27FBE9360;
  if (!qword_27FBE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9360);
  }

  return result;
}

uint64_t sub_25BEE6180(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_25BEE6248(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t sub_25BEE63C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticleThumbnail.body.getter()
{
  sub_25BEE654C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsArticle();
  sub_25BEE66E8(v0 + *(v5 + 24), v4, sub_25BEE654C);
  v6 = swift_allocObject();
  v6[2] = sub_25BEE65A4;
  v6[3] = 0;
  v6[4] = sub_25BEE66C0;
  v6[5] = 0;
  sub_25BEE69E4();
  sub_25BEE6A9C();
  return sub_25BEF87A8();
}

void sub_25BEE654C()
{
  if (!qword_2815581D0)
  {
    sub_25BEF8098();
    v0 = sub_25BEF8B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2815581D0);
    }
  }
}

uint64_t sub_25BEE65A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25BEF88D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v7 = sub_25BEF88E8();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_25BEE66C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BEF88C8();
  *a1 = result;
  return result;
}

uint64_t sub_25BEE66E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BEE6774()
{
  sub_25BEE654C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsArticle();
  sub_25BEE66E8(v0 + *(v5 + 24), v4, sub_25BEE654C);
  v6 = swift_allocObject();
  v6[2] = sub_25BEE65A4;
  v6[3] = 0;
  v6[4] = sub_25BEE66C0;
  v6[5] = 0;
  sub_25BEE69E4();
  sub_25BEE6A9C();
  return sub_25BEF87A8();
}

uint64_t sub_25BEE6894(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (sub_25BEF87C8())
  {
    a2(&v7);
    sub_25BEE6A44();
    sub_25BEE6B1C();
    swift_retain_n();
    sub_25BEF87E8();
  }

  else
  {
    a4(&v7);
    sub_25BEE6A44();
    sub_25BEE6B1C();
    sub_25BEF87E8();
  }

  return v7;
}

void sub_25BEE69E4()
{
  if (!qword_27FBE9370)
  {
    sub_25BEE6A44();
    v0 = sub_25BEF87F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE9370);
    }
  }
}

void sub_25BEE6A44()
{
  if (!qword_27FBE9378)
  {
    v0 = sub_25BEF87D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE9378);
    }
  }
}

unint64_t sub_25BEE6A9C()
{
  result = qword_27FBE9380;
  if (!qword_27FBE9380)
  {
    sub_25BEE69E4();
    sub_25BEE6B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9380);
  }

  return result;
}

unint64_t sub_25BEE6B1C()
{
  result = qword_27FBE9388;
  if (!qword_27FBE9388)
  {
    sub_25BEE6A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9388);
  }

  return result;
}

uint64_t type metadata accessor for NewsArticleThumbnail()
{
  result = qword_27FBE9390;
  if (!qword_27FBE9390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BEE6C24()
{
  result = type metadata accessor for NewsArticle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25BEE6C90()
{
  result = qword_27FBE93A0;
  if (!qword_27FBE93A0)
  {
    sub_25BEE6CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE93A0);
  }

  return result;
}

void sub_25BEE6CE8()
{
  if (!qword_27FBE93A8)
  {
    sub_25BEE69E4();
    sub_25BEE6A9C();
    v0 = sub_25BEF87B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE93A8);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BEE6D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  result = sub_25BEE6894(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 18) = v8 & 1;
  return result;
}

uint64_t sub_25BEE6DCC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF8218();
  result = sub_25BEF8448();
  if (result)
  {
    v3 = sub_25BEF8208();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BEE6E38()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8218();
  sub_25BEF84E8();
  v5 = v1[13];
  v5(v4, *MEMORY[0x277D6CF00], v0);
  sub_25BEF8418();

  v6 = v1[1];
  v6(v4, v0);
  sub_25BEF8148();
  sub_25BEF84E8();
  v5(v4, *MEMORY[0x277D6CF10], v0);
  sub_25BEF8418();

  return (v6)(v4, v0);
}

uint64_t sub_25BEE6FF8(void *a1)
{
  v40 = a1;
  v1 = *(*(sub_25BEF8268() - 8) + 64);
  MEMORY[0x28223BE20]();
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_25BEF8188();
  v35 = *(v38 - 8);
  v3 = v35;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20]();
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_25BEF81F8() - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v8 = sub_25BEF82A8();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CEAD38];
  v12 = MEMORY[0x277D84560];
  sub_25BEE7900(0, &qword_27FBE93B0, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v13 = *(v6 + 72);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BEFAF20;
  sub_25BEF81D8();
  sub_25BEF81E8();
  v42[0] = v15;
  sub_25BEE78B8(&qword_27FBE93B8, MEMORY[0x277CEAD38]);
  v16 = MEMORY[0x277D83940];
  sub_25BEE7900(0, &qword_27FBE93C0, v11, MEMORY[0x277D83940]);
  sub_25BEE77F0(&qword_27FBE93C8, &qword_27FBE93C0, v11);
  sub_25BEF8B78();
  v17 = sub_25BEF8228();
  v42[3] = v17;
  v42[4] = MEMORY[0x277CEAD58];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CEAD50], v17);
  v19 = sub_25BEF82C8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25BEF82B8();
  v22 = MEMORY[0x277CEAC90];
  sub_25BEE7900(0, &qword_27FBE93D0, MEMORY[0x277CEAC90], v12);
  v23 = *(v3 + 72);
  v24 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25BEFAF30;
  sub_25BEF8178();
  sub_25BEF8158();
  sub_25BEF8168();
  v41 = v25;
  sub_25BEE78B8(&qword_27FBE93D8, MEMORY[0x277CEAC90]);
  sub_25BEE7900(0, &qword_27FBE93E0, v22, v16);
  sub_25BEE77F0(&unk_27FBE93E8, &qword_27FBE93E0, v22);
  sub_25BEF8B78();
  v26 = sub_25BEF81C8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v36;
  sub_25BEF81B8();
  sub_25BEF8258();
  sub_25BEF8298();
  v30 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_25BEF8148();
  result = sub_25BEF8448();
  if (result)
  {
    v32 = sub_25BEF8128();

    (*(v33 + 8))(v29, v34);
    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BEE7584()
{
  v0 = *(*(sub_25BEF8288() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_25BEF8148();
  sub_25BEF8248();
  sub_25BEF8238();
  sub_25BEF81A8();
  sub_25BEF8198();
  sub_25BEF8278();
  return sub_25BEF8138();
}

uint64_t sub_25BEE7674()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEF82D8();
  sub_25BEF84E8();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_25BEF8418();

  (*(v1 + 8))(v4, v0);
  sub_25BEF8498();
  sub_25BEF84D8();
}

uint64_t sub_25BEE77F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25BEE7900(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_25BEE78B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25BEE7900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25BEE79D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE7B54();
  result = sub_25BEF8448();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ArticleRecirculationConfigurationService();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    a2[3] = v6;
    result = sub_25BEE7BB8();
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BEE7A80()
{
  sub_25BEF8488();
  sub_25BEE7AF0();
  sub_25BEF84F8();
}

unint64_t sub_25BEE7AF0()
{
  result = qword_2815581A8;
  if (!qword_2815581A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2815581A8);
  }

  return result;
}

unint64_t sub_25BEE7B54()
{
  result = qword_281557620;
  if (!qword_281557620)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281557620);
  }

  return result;
}

unint64_t sub_25BEE7BB8()
{
  result = qword_27FBE93F8;
  if (!qword_27FBE93F8)
  {
    type metadata accessor for ArticleRecirculationConfigurationService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE93F8);
  }

  return result;
}

uint64_t sub_25BEE7C20()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

uint64_t sub_25BEE7C68()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

unint64_t sub_25BEE7CAC()
{
  v1 = 0x756F72676B636162;
  v2 = 0x756F726765726F66;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BEE7D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BEE8C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BEE7D78(uint64_t a1)
{
  v2 = sub_25BEE81E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEE7DB4(uint64_t a1)
{
  v2 = sub_25BEE81E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsChannelTheme.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_25BEE8878(0, &qword_27FBE9400, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE81E8();
  sub_25BEF8D68();
  if (!v2)
  {
    v37 = 0;
    sub_25BEE8288();
    sub_25BEF8C78();
    v31 = v34;
    v32 = aBlock;
    v37 = 1;
    sub_25BEF8C78();
    v29 = v34;
    v30 = aBlock;
    v37 = 0;
    sub_25BEF8C78();
    v27 = v34;
    v28 = aBlock;
    v37 = 3;
    sub_25BEF8C78();
    v26 = aBlock;
    v25 = v34;
    v13 = objc_allocWithZone(MEMORY[0x277D75348]);
    v14 = swift_allocObject();
    v15 = v29;
    v14[1] = v30;
    v14[2] = v15;
    v16 = v31;
    v14[3] = v32;
    v14[4] = v16;
    v35 = sub_25BEE87E0;
    v36 = v14;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v34 = sub_25BEE87E4;
    *(&v34 + 1) = &block_descriptor_0;
    v17 = _Block_copy(&aBlock);

    v18 = [v13 initWithDynamicProvider_];
    _Block_release(v17);
    v19 = objc_allocWithZone(MEMORY[0x277D75348]);
    v20 = swift_allocObject();
    v21 = v25;
    v22 = v27;
    v20[1] = v26;
    v20[2] = v21;
    v20[3] = v28;
    v20[4] = v22;
    v35 = sub_25BEE8E04;
    v36 = v20;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v34 = sub_25BEE87E4;
    *(&v34 + 1) = &block_descriptor_7;
    v23 = _Block_copy(&aBlock);

    v24 = [v19 initWithDynamicProvider_];
    _Block_release(v23);
    (*(v7 + 8))(v10, v6);
    *a2 = v18;
    a2[1] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BEE81E8()
{
  result = qword_27FBE9408;
  if (!qword_27FBE9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9408);
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

unint64_t sub_25BEE8288()
{
  result = qword_27FBE9410;
  if (!qword_27FBE9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9410);
  }

  return result;
}

uint64_t NewsChannelTheme.encode(to:)(void *a1)
{
  sub_25BEE8878(0, &qword_27FBE9418, MEMORY[0x277D84538]);
  v4 = v3;
  v56 = *(v3 - 8);
  v5 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v47 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE81E8();
  sub_25BEF8D78();
  v11 = objc_opt_self();
  v12 = [v11 traitCollectionWithUserInterfaceStyle_];
  v13 = [v9 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v55 = v14;
  sub_25BEF8B38();
  v54 = v15;
  sub_25BEF8B38();
  v53 = v16;
  sub_25BEF8B38();
  v52 = v17;

  v18 = [v11 traitCollectionWithUserInterfaceStyle_];
  v19 = [v9 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v51 = v20;
  sub_25BEF8B38();
  v50 = v21;
  sub_25BEF8B38();
  v49 = v22;
  sub_25BEF8B38();
  v48 = v23;

  v24 = [v11 traitCollectionWithUserInterfaceStyle_];
  v25 = [v8 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v27 = v26;
  sub_25BEF8B38();
  v29 = v28;
  sub_25BEF8B38();
  v31 = v30;
  sub_25BEF8B38();
  v33 = v32;

  v34 = [v11 traitCollectionWithUserInterfaceStyle_];
  v35 = [v8 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v37 = v36;
  sub_25BEF8B38();
  v39 = v38;
  sub_25BEF8B38();
  v41 = v40;
  sub_25BEF8B38();
  v43 = v42;

  v58 = v55;
  v59 = v54;
  v60 = v53;
  v61 = v52;
  v62 = 0;
  sub_25BEE88DC();
  v44 = v57;
  sub_25BEF8CB8();
  if (v44)
  {
    return (*(v56 + 8))(v7, v4);
  }

  v46 = v56;
  v58 = v51;
  v59 = v50;
  v60 = v49;
  v61 = v48;
  v62 = 1;
  sub_25BEF8CB8();
  v58 = v27;
  v59 = v29;
  v60 = v31;
  v61 = v33;
  v62 = 2;
  sub_25BEF8CB8();
  v58 = v37;
  v59 = v39;
  v60 = v41;
  v61 = v43;
  v62 = 3;
  sub_25BEF8CB8();
  return (*(v46 + 8))(v7, v4);
}

uint64_t static NewsChannelTheme.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_25BEE8930();
  if (sub_25BEF8B48())
  {
    return sub_25BEF8B48() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BEE8778(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_25BEE8930();
  if (sub_25BEF8B48())
  {
    return sub_25BEF8B48() & 1;
  }

  else
  {
    return 0;
  }
}

id sub_25BEE87E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BEE8878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEE81E8();
    v7 = a3(a1, &type metadata for NewsChannelTheme.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25BEE88DC()
{
  result = qword_27FBE9420;
  if (!qword_27FBE9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9420);
  }

  return result;
}

unint64_t sub_25BEE8930()
{
  result = qword_27FBE9428;
  if (!qword_27FBE9428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBE9428);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25BEE8988(uint64_t *a1, int a2)
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

uint64_t sub_25BEE89D0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NewsChannelTheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewsChannelTheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BEE8B7C()
{
  result = qword_27FBE9430;
  if (!qword_27FBE9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9430);
  }

  return result;
}

unint64_t sub_25BEE8BD4()
{
  result = qword_27FBE9438;
  if (!qword_27FBE9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9438);
  }

  return result;
}

unint64_t sub_25BEE8C2C()
{
  result = qword_27FBE9440;
  if (!qword_27FBE9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9440);
  }

  return result;
}

uint64_t sub_25BEE8C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BEFC340 == a2 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BEFC360 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BEE8E14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BEE8E34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_25BEE8E70(void *a1, double a2, double a3, double a4, double a5)
{
  sub_25BEE9648(0, &qword_27FBE9460, MEMORY[0x277D84538]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v19 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE95A0();
  sub_25BEF8D78();
  v21 = a2;
  v20 = 0;
  sub_25BEE96AC();
  sub_25BEF8CB8();
  if (!v5)
  {
    v21 = a3;
    v20 = 1;
    sub_25BEF8CB8();
    v21 = a4;
    v20 = 2;
    sub_25BEF8CB8();
    v21 = a5;
    v20 = 3;
    sub_25BEF8CB8();
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_25BEE9080()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BEE90E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BEE91D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BEE9108(uint64_t a1)
{
  v2 = sub_25BEE95A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEE9144(uint64_t a1)
{
  v2 = sub_25BEE95A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BEE9180(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BEE932C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_25BEE91D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_25BEE932C(uint64_t *a1)
{
  sub_25BEE9648(0, &qword_27FBE9448, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE95A0();
  sub_25BEF8D68();
  if (!v1)
  {
    HIBYTE(v12) = 0;
    sub_25BEE95F4();
    sub_25BEF8C78();
    v2 = v13;
    HIBYTE(v12) = 1;
    sub_25BEF8C78();
    HIBYTE(v12) = 2;
    sub_25BEF8C78();
    HIBYTE(v12) = 3;
    sub_25BEF8C78();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_25BEE95A0()
{
  result = qword_27FBE9450;
  if (!qword_27FBE9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9450);
  }

  return result;
}

unint64_t sub_25BEE95F4()
{
  result = qword_27FBE9458;
  if (!qword_27FBE9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9458);
  }

  return result;
}

void sub_25BEE9648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEE95A0();
    v7 = a3(a1, &type metadata for RGBAColor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25BEE96AC()
{
  result = qword_27FBE9468;
  if (!qword_27FBE9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9468);
  }

  return result;
}

unint64_t sub_25BEE9714()
{
  result = qword_27FBE9470;
  if (!qword_27FBE9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9470);
  }

  return result;
}

unint64_t sub_25BEE976C()
{
  result = qword_27FBE9478;
  if (!qword_27FBE9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9478);
  }

  return result;
}

unint64_t sub_25BEE97C4()
{
  result = qword_27FBE9480;
  if (!qword_27FBE9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9480);
  }

  return result;
}

void sub_25BEE983C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_25BEF8068();
  sub_25BEE9AB8(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25BEE9BB4();
  v2 = sub_25BEF8A48();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

unint64_t sub_25BEE9920(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25BEF8A98();
  sub_25BEF8D38();
  sub_25BEF8AA8();
  v4 = sub_25BEF8D58();

  return sub_25BEE99B4(a1, v4);
}

unint64_t sub_25BEE99B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25BEF8A98();
      v9 = v8;
      if (v7 == sub_25BEF8A98() && v9 == v10)
      {
        break;
      }

      v12 = sub_25BEF8CD8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25BEE9AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25BEE9C0C();
    v3 = sub_25BEF8C18();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BEE9C7C(v4, &v11);
      v5 = v11;
      result = sub_25BEE9920(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25BEE9D4C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_25BEE9BB4()
{
  result = qword_27FBE9710;
  if (!qword_27FBE9710)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9710);
  }

  return result;
}

void sub_25BEE9C0C()
{
  if (!qword_27FBE9488)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_25BEE9BB4();
    v0 = sub_25BEF8C28();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE9488);
    }
  }
}

uint64_t sub_25BEE9C7C(uint64_t a1, uint64_t a2)
{
  sub_25BEE9CE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25BEE9CE0()
{
  if (!qword_27FBE9490)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE9490);
    }
  }
}

_OWORD *sub_25BEE9D4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_25BEE9D5C()
{
  v0 = objc_allocWithZone(type metadata accessor for WebViewControllerFactory());

  return [v0 init];
}

uint64_t sub_25BEE9DB8()
{
  sub_25BEF8488();
  sub_25BEE9E28();
  sub_25BEF84E8();
}

unint64_t sub_25BEE9E28()
{
  result = qword_281557608;
  if (!qword_281557608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281557608);
  }

  return result;
}

void *sub_25BEE9E8C()
{
  type metadata accessor for NewsService();
  v0 = swift_allocObject();
  result = sub_25BEE9F24();
  qword_281557E60 = v0;
  return result;
}

uint64_t static NewsService.shared.getter()
{
  if (qword_281557E50 != -1)
  {
    swift_once();
  }
}

void *sub_25BEE9F24()
{
  v1 = v0;
  if (qword_281557D88 != -1)
  {
    swift_once();
  }

  sub_25BEED0F4();
  v3 = v2;
  v4 = [v2 tagController];
  result = [v3 subscriptionController];
  if (result)
  {
    v6 = sub_25BEF8918();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_25BEF8908();
    v10 = MEMORY[0x277D33258];
    v18 = v6;
    v19 = MEMORY[0x277D33258];
    *&v17 = v9;

    v11 = [v3 news_core_ConfigurationManager];
    result = [v3 paidAccessChecker];
    if (result)
    {
      v12 = sub_25BEF8938();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v15 = v3;
      v16 = sub_25BEF8928();
      v1[5] = v6;
      v1[6] = v10;
      v1[2] = v9;
      v18 = v12;
      v19 = MEMORY[0x277D33580];

      *&v17 = v16;
      sub_25BEE4EF4(&v17, (v1 + 7));
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NewsService.storeFrontID.getter()
{
  if (qword_281557D88 != -1)
  {
    swift_once();
  }

  sub_25BEED0F4();
  v1 = v0;
  v2 = [v0 contentStoreFrontID];

  v3 = sub_25BEF8A98();
  return v3;
}

uint64_t NewsService.fetchArticles(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25BEEA194, 0, 0);
}

uint64_t sub_25BEEA194()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      v7 = sub_25BEF8A68();
      v8 = [v7 fc_isValidArticleID];

      if ((v8 & 1) == 0)
      {
        v9 = sub_25BEF8A68();
        v10 = FCArticleCloudKitIDFromUUID();

        v6 = sub_25BEF8A98();
        v12 = v11;

        v5 = v12;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25BEEAEF0(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_25BEEAEF0((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[16 * v14];
      *(v15 + 4) = v6;
      *(v15 + 5) = v5;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[5] = v4;
  v16 = v0[4];
  v17 = swift_task_alloc();
  v0[6] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v4;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  v0[7] = v19;
  sub_25BEEBB20(0, &unk_281557748, type metadata accessor for NewsArticle, MEMORY[0x277D83940]);
  *v19 = v0;
  v19[1] = sub_25BEEA3E4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000025BEFC3C0, sub_25BEEB000, v17, v20);
}

uint64_t sub_25BEEA3E4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_25BEEA524;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = sub_25BEEA508;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25BEEA524()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_25BEEA590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  sub_25BEEB044();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v18[1] = v10;
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  v22 = a3;
  sub_25BEEBB20(0, &qword_281557738, sub_25BEEB164, MEMORY[0x277D83940]);
  sub_25BEF8568();
  v19 = *(v8 + 16);
  v19(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v18[0] = *(v8 + 32);
  (v18[0])(v13 + v12, v11, v7);
  v14 = sub_25BEF8518();
  sub_25BEF8528();

  v19(v11, v20, v7);
  v15 = swift_allocObject();
  (v18[0])(v15 + v12, v11, v7);
  v16 = sub_25BEF8518();
  sub_25BEF8538();
}

uint64_t sub_25BEEA80C(void *a1)
{
  v1 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  v2 = [objc_opt_self() defaultCachePolicy];
  v3 = *MEMORY[0x277D30B78];
  v4 = sub_25BEF8948();

  return v4;
}

uint64_t sub_25BEEA8B0(unint64_t *a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for NewsChannel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NewsArticle();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v55 = &v45 - v11;
  v12 = *a1;
  v57 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_25:
    v13 = sub_25BEF8C08();
    if (v13)
    {
LABEL_3:
      v14 = 0;
      v15 = v12 & 0xC000000000000001;
      v54 = v12 & 0xFFFFFFFFFFFFFF8;
      *&v10 = 136446210;
      v46 = v10;
      v47 = v13;
      v48 = v12;
      do
      {
        if (v15)
        {
          v17 = MEMORY[0x25F881880](v14, v12);
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v14 >= *(v54 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v12 + 8 * v14 + 32);
          swift_unknownObjectRetain();
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        if ([v17 isPaid] & 1) != 0 || (objc_msgSend(v17, sel_respondsToSelector_, sel_isBundlePaid) & 1) != 0 && (objc_msgSend(v17, sel_isBundlePaid))
        {
          if (qword_27FBE8D30 != -1)
          {
            swift_once();
          }

          v19 = sub_25BEF86B8();
          __swift_project_value_buffer(v19, qword_27FBEBB60);
          swift_unknownObjectRetain();
          v20 = sub_25BEF8698();
          v21 = sub_25BEF8B28();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v56 = v50;
            *v22 = v46;
            v23 = [v17 identifier];
            v24 = sub_25BEF8A98();
            v49 = v20;
            v25 = v15;
            v26 = v24;
            v28 = v27;

            v29 = v26;
            v15 = v25;
            v30 = sub_25BEEB570(v29, v28, &v56);
            v13 = v47;

            *(v22 + 4) = v30;
            v31 = v21;
            v12 = v48;
            v32 = v49;
            _os_log_impl(&dword_25BEE2000, v49, v31, "NewsService filtered paid headline, id=%{public}s", v22, 0xCu);
            v33 = v50;
            __swift_destroy_boxed_opaque_existential_1(v50);
            MEMORY[0x25F881EF0](v33, -1, -1);
            MEMORY[0x25F881EF0](v22, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_25BEF8BB8();
          v16 = *(v57 + 16);
          sub_25BEF8BD8();
          sub_25BEF8BE8();
          sub_25BEF8BC8();
        }

        ++v14;
      }

      while (v18 != v13);
      v34 = v57;
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v34 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  if ((v34 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v54 = *(v34 + 16);
  if (!v54)
  {
    goto LABEL_46;
  }

  do
  {
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    while ((v34 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x25F881880](v35, v34);
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_43;
      }

LABEL_35:
      if ([v37 sourceChannel])
      {
        v39 = swift_unknownObjectRetain();
        v40 = v53;
        sub_25BEEBC30(v39, v53);
        v41 = v51;
        sub_25BEF0FE8(v37, v40, v51);
        swift_unknownObjectRelease();
        sub_25BEE63C8(v41, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_25BEEB374(0, v36[2] + 1, 1, v36);
        }

        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          v36 = sub_25BEEB374(v42 > 1, v43 + 1, 1, v36);
        }

        v36[2] = v43 + 1;
        sub_25BEE63C8(v55, v36 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v43);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v35;
      if (v38 == v54)
      {
        goto LABEL_47;
      }
    }

    if (v35 >= *(v34 + 16))
    {
      goto LABEL_44;
    }

    v37 = *(v34 + 8 * v35 + 32);
    swift_unknownObjectRetain();
    v38 = v35 + 1;
    if (!__OFADD__(v35, 1))
    {
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v54 = sub_25BEF8C08();
  }

  while (v54);
LABEL_46:
  v36 = MEMORY[0x277D84F90];
LABEL_47:

  v57 = v36;
  sub_25BEEB044();
  return sub_25BEF8B08();
}

uint64_t sub_25BEEAE44(void *a1)
{
  v1 = a1;
  sub_25BEEB044();
  return sub_25BEF8AF8();
}

uint64_t NewsService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t NewsService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

char *sub_25BEEAEF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BEEBBE4(0, &unk_2815575B8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25BEEB044()
{
  if (!qword_281557728)
  {
    sub_25BEEBB20(255, &unk_281557748, type metadata accessor for NewsArticle, MEMORY[0x277D83940]);
    sub_25BEEB0E4();
    v0 = sub_25BEF8B18();
    if (!v1)
    {
      atomic_store(v0, &qword_281557728);
    }
  }
}

unint64_t sub_25BEEB0E4()
{
  result = qword_2815575A0;
  if (!qword_2815575A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2815575A0);
  }

  return result;
}

unint64_t sub_25BEEB164()
{
  result = qword_2815576E0;
  if (!qword_2815576E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2815576E0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  sub_25BEEB044();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25BEEB2CC(void *a1)
{
  sub_25BEEB044();
  v3 = *(*(v2 - 8) + 80);

  return sub_25BEEAE44(a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

size_t sub_25BEEB374(size_t result, int64_t a2, char a3, void *a4)
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

  sub_25BEEBB20(0, &unk_2815575C8, type metadata accessor for NewsArticle, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for NewsArticle() - 8);
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
  v15 = *(type metadata accessor for NewsArticle() - 8);
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

uint64_t sub_25BEEB570(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BEEB63C(v11, 0, 0, 1, a1, a2);
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
    sub_25BEEBB88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25BEEB63C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25BEEB748(a5, a6);
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
    result = sub_25BEF8BA8();
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

uint64_t sub_25BEEB748(uint64_t a1, unint64_t a2)
{
  v4 = sub_25BEEB794(a1, a2);
  sub_25BEEB8C4(&unk_286D86AD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25BEEB794(uint64_t a1, unint64_t a2)
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

  v6 = sub_25BEEB9B0(v5, 0);
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

  result = sub_25BEF8BA8();
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
        v10 = sub_25BEF8AB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BEEB9B0(v10, 0);
        result = sub_25BEF8B88();
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

uint64_t sub_25BEEB8C4(uint64_t result)
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

  result = sub_25BEEBA28(result, v12, 1, v3);
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

void *sub_25BEEB9B0(uint64_t a1, uint64_t a2)
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

  sub_25BEEBBE4(0, &qword_27FBE9500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BEEBA28(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BEEBBE4(0, &qword_27FBE9500);
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

void sub_25BEEBB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25BEEBB88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_25BEEBBE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25BEF8CC8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25BEEBC30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_25BEF8A98();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 name];
  v9 = sub_25BEF8A98();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 theme];
  v13 = type metadata accessor for NewsChannel();
  sub_25BEF45F4(v12, (a2 + *(v13 + 24)));
  if ([a1 theme])
  {
    ObjectType = swift_getObjectType();
    v15 = sub_25BEEEA38(ObjectType);
    v16 = sub_25BEEEA60(ObjectType);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v15 = 0;
    v16 = 0;
  }

  v18 = (a2 + *(v13 + 28));
  *v18 = v15;
  v18[1] = v16;
  return result;
}

uint64_t NewsChannel.LogoTheme.hashValue.getter()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

uint64_t NewsChannel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NewsChannel.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t type metadata accessor for NewsChannel()
{
  result = qword_281557EF0;
  if (!qword_281557EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id NewsChannel.theme.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsChannel() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;

  return sub_25BEEBF28(v4, v5);
}

id sub_25BEEBF28(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_25BEEBF68()
{
  v1 = 25705;
  v2 = 1869049708;
  if (*v0 != 2)
  {
    v2 = 0x656D656874;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BEEBFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BEECF84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BEEBFEC(uint64_t a1)
{
  v2 = sub_25BEEC298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEEC028(uint64_t a1)
{
  v2 = sub_25BEEC298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsChannel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25BEEC768(0, &qword_27FBE9508, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEEC298();
  sub_25BEF8D78();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v22) = 0;
  sub_25BEF8C98();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v22) = 1;
    sub_25BEF8C98();
    v16 = type metadata accessor for NewsChannel();
    v17 = *(v16 + 24);
    LOBYTE(v22) = 2;
    type metadata accessor for NewsChannelLogoCollection();
    sub_25BEEC7CC(&qword_27FBE9518);
    sub_25BEF8CB8();
    v18 = v3 + *(v16 + 28);
    v19 = *(v18 + 1);
    v22 = *v18;
    v23 = v19;
    v21[15] = 3;
    sub_25BEEBF28(v22, v19);
    sub_25BEEC2EC();
    sub_25BEF8C88();
    sub_25BEEC340(v22, v23);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_25BEEC298()
{
  result = qword_27FBE9510;
  if (!qword_27FBE9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9510);
  }

  return result;
}

unint64_t sub_25BEEC2EC()
{
  result = qword_27FBE9520;
  if (!qword_27FBE9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9520);
  }

  return result;
}

void sub_25BEEC340(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t NewsChannel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for NewsChannelLogoCollection();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEEC768(0, &qword_27FBE9528, MEMORY[0x277D844C8]);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for NewsChannel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEEC298();
  v27 = v10;
  v16 = v28;
  sub_25BEF8D68();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v18 = v25;
  v19 = v26;
  LOBYTE(v29) = 0;
  *v14 = sub_25BEF8C58();
  v14[1] = v20;
  v28 = v20;
  LOBYTE(v29) = 1;
  v14[2] = sub_25BEF8C58();
  v14[3] = v21;
  LOBYTE(v29) = 2;
  sub_25BEEC7CC(&qword_27FBE9530);
  sub_25BEF8C78();
  sub_25BEEC810(v6, v14 + *(v11 + 24));
  v30 = 3;
  sub_25BEEC874();
  sub_25BEF8C48();
  (*(v18 + 8))(v27, v19);
  *(v14 + *(v11 + 28)) = v29;
  sub_25BEEC8C8(v14, v24, type metadata accessor for NewsChannel);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_25BEEC930(v14, type metadata accessor for NewsChannel);
}

void sub_25BEEC768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEEC298();
    v7 = a3(a1, &type metadata for NewsChannel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEEC7CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewsChannelLogoCollection();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BEEC810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannelLogoCollection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25BEEC874()
{
  result = qword_27FBE9538;
  if (!qword_27FBE9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9538);
  }

  return result;
}

uint64_t sub_25BEEC8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BEEC930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BEEC9C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL _s7NewsKit0A7ChannelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25BEF8CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_25BEF8CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NewsChannel();
  if ((static NewsChannelLogoCollection.== infix(_:_:)(a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = a2 + v7;
  v12 = *v10;
  v11 = *(v10 + 1);
  if (v9)
  {
    if (v12)
    {
      sub_25BEE8930();
      sub_25BEEBF28(v9, v8);
      sub_25BEEBF28(v12, v11);
      sub_25BEEBF28(v9, v8);
      if (sub_25BEF8B48())
      {
        v13 = sub_25BEF8B48();
        sub_25BEEC340(v12, v11);

        sub_25BEEC340(v9, v8);
        return (v13 & 1) != 0;
      }

      sub_25BEEC340(v12, v11);

      v15 = v9;
      v16 = v8;
      goto LABEL_22;
    }

    sub_25BEEBF28(v9, v8);
    sub_25BEEBF28(0, v11);
    sub_25BEEBF28(v9, v8);

LABEL_20:
    sub_25BEEC340(v9, v8);
    v15 = v12;
    v16 = v11;
LABEL_22:
    sub_25BEEC340(v15, v16);
    return 0;
  }

  sub_25BEEBF28(0, v8);
  if (v12)
  {
    sub_25BEEBF28(v12, v11);
    goto LABEL_20;
  }

  sub_25BEEBF28(0, v11);
  sub_25BEEC340(0, v8);
  return 1;
}

unint64_t sub_25BEECBB0()
{
  result = qword_27FBE9540;
  if (!qword_27FBE9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9540);
  }

  return result;
}

void sub_25BEECC38()
{
  type metadata accessor for NewsChannelLogoCollection();
  if (v0 <= 0x3F)
  {
    sub_25BEECCCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BEECCCC()
{
  if (!qword_2815580F0)
  {
    v0 = sub_25BEF8B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2815580F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsChannel.LogoTheme(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewsChannel.LogoTheme(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BEECE80()
{
  result = qword_27FBE9548;
  if (!qword_27FBE9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9548);
  }

  return result;
}

unint64_t sub_25BEECED8()
{
  result = qword_27FBE9550;
  if (!qword_27FBE9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9550);
  }

  return result;
}

unint64_t sub_25BEECF30()
{
  result = qword_27FBE9558;
  if (!qword_27FBE9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9558);
  }

  return result;
}

uint64_t sub_25BEECF84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_25BEED0F4()
{
  v1 = v0;
  sub_25BEE654C();
  v3 = *(*(v2 - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = *(v0 + 72);
  if (v9)
  {
    v10 = *(v0 + 72);
LABEL_15:
    v32 = v9;
    return;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D30F18]) initWithEnvironment_];
  sub_25BEEDDC0();
  v36 = v11;
  v12 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v12)
  {
    v13 = v12;
    sub_25BEF8088();

    v14 = sub_25BEF8098();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v15 = sub_25BEF8098();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  v16 = 1;
  v17 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v17)
  {
    v18 = v17;
    sub_25BEF8088();

    v16 = 0;
  }

  v19 = sub_25BEF8098();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v6, v16, 1, v19);
  v35 = [objc_allocWithZone(type metadata accessor for PrivateDataActionProvider()) init];
  v34 = [objc_allocWithZone(type metadata accessor for StubAppActivityMonitor()) init];
  v21 = [objc_opt_self() defaultAvailability];
  v22 = *(v20 + 48);
  v23 = 0;
  if (v22(v8, 1, v19) != 1)
  {
    v23 = sub_25BEF8068();
    (*(v20 + 8))(v8, v19);
  }

  if (v22(v6, 1, v19) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_25BEF8068();
    (*(v20 + 8))(v6, v19);
  }

  v25 = objc_allocWithZone(MEMORY[0x277D30EE0]);
  LOWORD(v33) = 0;
  v26 = v34;
  v28 = v36;
  v27 = v37;
  v29 = v35;
  v30 = [v25 initWithConfiguration:v37 configurationManager:v36 contentHostDirectory:v23 privateDataHostDirectory:v24 privateDataActionProvider:v35 networkBehaviorMonitor:0 appActivityMonitor:v34 desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:2 lockStoreFrontIfNeeded:v33 deviceIsiPad:0 backgroundTaskable:v21 privateDataSyncAvailability:0 pptContext:?];

  if (v30)
  {
    v31 = *(v1 + 72);
    *(v1 + 72) = v30;
    v30;

    v9 = 0;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_25BEED4BC()
{
  type metadata accessor for NewsKitModule();
  v0 = swift_allocObject();
  result = sub_25BEED5B0();
  qword_2815586E0 = v0;
  return result;
}

uint64_t sub_25BEED4F8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_25BEEE64C(v1 + 24, &v6);
  if (v7)
  {
    return sub_25BEE4EF4(&v6, a1);
  }

  sub_25BEEE55C(&v6);
  v4 = v1;
  v5 = *(v1 + 16);
  sub_25BEF8598();
  sub_25BEEE6DC(a1, &v6);
  swift_beginAccess();
  sub_25BEEE740(&v6, v4 + 24);
  return swift_endAccess();
}

uint64_t sub_25BEED5B0()
{
  v1 = v0;
  v2 = sub_25BEF8578();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BEF8478();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 64) = sub_25BEF8468();
  v10 = MEMORY[0x277D84560];
  sub_25BEEE5E4(0, &unk_2815575D8, &unk_281558180, MEMORY[0x277D6CCC8], MEMORY[0x277D84560]);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v11 = swift_allocObject();
  v59 = xmmword_25BEFB6B0;
  *(v11 + 16) = xmmword_25BEFB6B0;
  [objc_allocWithZone(MEMORY[0x277D550F8]) init];
  v12 = sub_25BEF84B8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_25BEF84C8();
  v16 = MEMORY[0x277D6CD70];
  *(v11 + 56) = v12;
  *(v11 + 64) = v16;
  *(v11 + 32) = v15;
  [objc_allocWithZone(MEMORY[0x277D355E0]) init];
  v17 = *(v12 + 48);
  v18 = *(v12 + 52);
  swift_allocObject();
  v19 = sub_25BEF84C8();
  *(v11 + 96) = v12;
  *(v11 + 104) = v16;
  *(v11 + 72) = v19;
  v20 = sub_25BEF84A8();
  v21 = [objc_allocWithZone(v20) init];
  v22 = MEMORY[0x277D6CC58];
  *(v11 + 136) = v20;
  *(v11 + 144) = v22;
  *(v11 + 112) = v21;
  v23 = sub_25BEF8728();
  v24 = [objc_allocWithZone(v23) init];
  *(v11 + 176) = v23;
  *(v11 + 184) = sub_25BEEE9C4(&unk_281558128, MEMORY[0x277D6D8F0]);
  *(v11 + 152) = v24;
  v25 = sub_25BEF8798();
  v26 = [objc_allocWithZone(v25) init];
  *(v11 + 216) = v25;
  *(v11 + 224) = sub_25BEEE9C4(&qword_281558100, MEMORY[0x277D2D690]);
  *(v11 + 192) = v26;
  v27 = sub_25BEF8A38();
  v28 = [objc_allocWithZone(v27) init];
  *(v11 + 256) = v27;
  *(v11 + 264) = sub_25BEEE9C4(&qword_281557758, MEMORY[0x277D34700]);
  *(v11 + 232) = v28;
  v29 = sub_25BEF83F8();
  v30 = [objc_allocWithZone(v29) init];
  *(v11 + 296) = v29;
  *(v11 + 304) = sub_25BEEE9C4(&qword_2815581A0, MEMORY[0x277D30350]);
  *(v11 + 272) = v30;
  v31 = sub_25BEF8688();
  v32 = [objc_allocWithZone(v31) init];
  *(v11 + 336) = v31;
  *(v11 + 344) = sub_25BEEE9C4(&qword_281558138, MEMORY[0x277D353C0]);
  *(v11 + 312) = v32;
  v33 = sub_25BEF8628();
  v34 = [objc_allocWithZone(v33) init];
  *(v11 + 376) = v33;
  *(v11 + 384) = sub_25BEEE9C4(&qword_281558160, MEMORY[0x277D31920]);
  *(v11 + 352) = v34;
  sub_25BEEE5E4(0, &qword_2815575E8, &unk_281558190, MEMORY[0x277D6CA90], v10);
  v35 = swift_allocObject();
  *(v35 + 16) = v59;
  v36 = type metadata accessor for AnalyticsAssembly();
  v37 = swift_allocObject();
  *(v35 + 56) = v36;
  *(v35 + 64) = sub_25BEEE9C4(qword_2815578A8, type metadata accessor for AnalyticsAssembly);
  *(v35 + 32) = v37;
  v38 = type metadata accessor for FactoryAssembly();
  v39 = swift_allocObject();
  *(v35 + 96) = v38;
  *(v35 + 104) = sub_25BEEE9C4(qword_281557C10, type metadata accessor for FactoryAssembly);
  *(v35 + 72) = v39;
  v40 = type metadata accessor for NewsCoreAssembly();
  v41 = swift_allocObject();
  *(v35 + 136) = v40;
  *(v35 + 144) = sub_25BEEE9C4(&qword_2815580E8, type metadata accessor for NewsCoreAssembly);
  *(v35 + 112) = v41;
  v42 = type metadata accessor for ProviderAssembly();
  v43 = swift_allocObject();
  *(v35 + 176) = v42;
  *(v35 + 184) = sub_25BEEE9C4(qword_281557AB0, type metadata accessor for ProviderAssembly);
  *(v35 + 152) = v43;
  v44 = type metadata accessor for RouterAssembly();
  v45 = swift_allocObject();
  *(v35 + 216) = v44;
  *(v35 + 224) = sub_25BEEE9C4(qword_281557CB8, type metadata accessor for RouterAssembly);
  *(v35 + 192) = v45;
  v46 = type metadata accessor for ServicesAssembly();
  v47 = swift_allocObject();
  *(v35 + 256) = v46;
  *(v35 + 264) = sub_25BEEE9C4(qword_281557A10, type metadata accessor for ServicesAssembly);
  *(v35 + 232) = v47;
  v48 = type metadata accessor for SettingsAssembly();
  v49 = swift_allocObject();
  *(v35 + 296) = v48;
  *(v35 + 304) = sub_25BEEE9C4(qword_281557958, type metadata accessor for SettingsAssembly);
  *(v35 + 272) = v49;
  v50 = type metadata accessor for SubscriptionAssembly();
  v51 = swift_allocObject();
  *(v35 + 336) = v50;
  *(v35 + 344) = sub_25BEEE9C4(qword_281557800, type metadata accessor for SubscriptionAssembly);
  *(v35 + 312) = v51;
  v52 = type metadata accessor for ToolbarAssembly();
  v53 = swift_allocObject();
  *(v35 + 376) = v52;
  *(v35 + 384) = sub_25BEEE9C4(qword_281557B58, type metadata accessor for ToolbarAssembly);
  *(v35 + 352) = v53;
  v54 = *(v1 + 64);
  (*(v3 + 104))(v6, *MEMORY[0x277D6CF60], v2);
  v55 = sub_25BEF85A8();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();

  *(v1 + 16) = sub_25BEF8588();
  return v1;
}

void sub_25BEEDDC0()
{
  sub_25BEE654C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 80);
  if (v5)
  {
    v6 = *(v0 + 80);
LABEL_24:
    v30 = v5;
    return;
  }

  v7 = [objc_opt_self() defaultConfiguration];
  v8 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v8)
  {
    v9 = v8;
    sub_25BEF8088();

    v10 = sub_25BEF8098();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  }

  else
  {
    v11 = sub_25BEF8098();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  v12 = [objc_opt_self() sharedInstance];
  v13 = FCBundle();
  if (!v13)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v13;
  v15 = sub_25BEF8A68();
  v16 = [v14 objectForInfoDictionaryKey_];

  v32 = v7;
  if (v16)
  {
    sub_25BEF8B68();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_25BEEE494(&v35);
  }

  v17 = FCBundle();
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
  v19 = sub_25BEF8A68();
  v20 = [v18 objectForInfoDictionaryKey_];

  if (v20)
  {
    sub_25BEF8B68();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (*(&v34 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_25BEEE494(&v35);
  }

  v21 = sub_25BEF8098();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v4, 1, v21) != 1)
  {
    v23 = sub_25BEF8068();
    (*(v22 + 8))(v4, v21);
  }

  v24 = objc_allocWithZone(MEMORY[0x277D30EF8]);
  v25 = sub_25BEF8A68();

  v26 = sub_25BEF8A68();

  v27 = v32;
  v28 = [v24 initWithContextConfiguration:v32 contentHostDirectoryFileURL:v23 feldsparIDProvider:v12 appShortVersionString:v25 buildNumberString:v26 networkBehaviorMonitor:0];

  if (v28)
  {
    v29 = *(v0 + 80);
    *(v0 + 80) = v28;
    v28;

    v5 = 0;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_25BEEE238()
{
  v1 = *(v0 + 16);

  sub_25BEEE55C(v0 + 24);
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_25BEEE3B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_25BEEE438()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BEEE494(uint64_t a1)
{
  sub_25BEEE4F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BEEE4F0()
{
  if (!qword_281557590)
  {
    v0 = sub_25BEF8B58();
    if (!v1)
    {
      atomic_store(v0, &qword_281557590);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BEEE55C(uint64_t a1)
{
  sub_25BEEE5E4(0, &qword_27FBE95C8, &unk_27FBE95D0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BEEE5E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25BEE59F0(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25BEEE64C(uint64_t a1, uint64_t a2)
{
  sub_25BEEE5E4(0, &qword_27FBE95C8, &unk_27FBE95D0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEEE6DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25BEEE740(uint64_t a1, uint64_t a2)
{
  sub_25BEEE5E4(0, &qword_27FBE95C8, &unk_27FBE95D0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEEE7D0()
{
  v0 = sub_25BEF88F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8118();
  sub_25BEF8108();
  sub_25BEF80E8();
  sub_25BEF80F8();

  v5 = (*(v1 + 88))(v4, v0);
  v6 = 0;
  if (v5 != *MEMORY[0x277D31C90])
  {
    if (v5 == *MEMORY[0x277D31CD0])
    {
      return 1;
    }

    else if (v5 == *MEMORY[0x277D31CA0])
    {
      return 2;
    }

    else if (v5 == *MEMORY[0x277D31CA8])
    {
      return 3;
    }

    else if (v5 == *MEMORY[0x277D31CC0])
    {
      return 4;
    }

    else if (v5 == *MEMORY[0x277D31CC8])
    {
      return 6;
    }

    else if (v5 == *MEMORY[0x277D31CB0])
    {
      return 7;
    }

    else if (v5 == *MEMORY[0x277D31CB8])
    {
      return 8;
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      return 0;
    }
  }

  return v6;
}

uint64_t sub_25BEEE9C4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BEEEA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v13[4] = a3;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_25BEE87E4;
  v13[3] = a4;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v11;
}

id sub_25BEEEBA4(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5, SEL *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [a1 userInterfaceStyle];
    if (v12 >= 2)
    {
      if (v12 == 2)
      {
        v13 = [v11 *a5];
        if (v13)
        {
          goto LABEL_16;
        }

        v13 = [v11 *a6];
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = [v11 backgroundColor];
        if (v13)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v13 = [v11 *a6];
      if (v13)
      {
LABEL_16:
        v16 = v13;
        v17 = [v13 ne_color];
        swift_unknownObjectRelease();

        return v17;
      }
    }

    v18 = [objc_opt_self() *a4];
    swift_unknownObjectRelease();
    return v18;
  }

  else
  {
    v14 = [objc_opt_self() *a4];

    return v14;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BEEEEA0()
{
  v0 = sub_25BEF86B8();
  __swift_allocate_value_buffer(v0, qword_27FBEBB60);
  __swift_project_value_buffer(v0, qword_27FBEBB60);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_25BEF8A98();
  }

  return sub_25BEF86A8();
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

uint64_t NewsArticleView.init(articles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t NewsArticleView.init(identifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t NewsArticleView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);

  if (v2)
  {

    return _s7NewsKit0A21ArticleViewControllerC11identifiersACSaySSG_tcfC_0(v3);
  }

  else
  {

    return _s7NewsKit0A21ArticleViewControllerC8articlesACSayAA0aC0VG_tcfC_0(v3);
  }
}

uint64_t sub_25BEEF064()
{
  v1 = *v0;
  v2 = *(v0 + 8);

  if (v2)
  {

    return _s7NewsKit0A21ArticleViewControllerC11identifiersACSaySSG_tcfC_0(v3);
  }

  else
  {

    return _s7NewsKit0A21ArticleViewControllerC8articlesACSayAA0aC0VG_tcfC_0(v3);
  }
}

uint64_t sub_25BEEF104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BEEF330();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25BEEF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BEEF330();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25BEEF1CC()
{
  sub_25BEEF330();
  sub_25BEF8868();
  __break(1u);
}

unint64_t sub_25BEEF1F8()
{
  result = qword_27FBE9640;
  if (!qword_27FBE9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9640);
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

uint64_t sub_25BEEF288(uint64_t a1, unsigned int a2)
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

uint64_t sub_25BEEF2D0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BEEF330()
{
  result = qword_27FBE9648;
  if (!qword_27FBE9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9648);
  }

  return result;
}

uint64_t sub_25BEEF3D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25BEF8718();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE50D0(0, &qword_27FBE9650);
  result = sub_25BEF8458();
  if (v9)
  {
    sub_25BEF86F8();
    sub_25BEF8708();
    result = sub_25BEF86E8();
    v8 = MEMORY[0x277D6D600];
    *a2 = result;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BEEF4E8@<X0>(void *a1@<X8>)
{
  v2 = sub_25BEF8748();
  result = [objc_allocWithZone(v2) init];
  v4 = MEMORY[0x277D6DC00];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BEEF558()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEE50D0(0, &qword_281558110);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE50D0(0, &qword_281558108);
  sub_25BEF84F8();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_25BEF8418();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_25BEEF714()
{
  v0 = sub_25BEF8778();
  __swift_allocate_value_buffer(v0, qword_27FBEBB78);
  __swift_project_value_buffer(v0, qword_27FBEBB78);
  return sub_25BEF8768();
}

id NewsArticleViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_25BEEF8C4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE59F0(0, &qword_27FBE9670);
  return sub_25BEF8428();
}

Swift::Void __swiftcall NewsArticleViewController.loadView()()
{
  sub_25BEEE6DC(v0 + OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_sceneProvider, v5);
  v1 = type metadata accessor for SceneProvidingView();
  v2 = objc_allocWithZone(v1);
  sub_25BEEE6DC(v5, v2 + OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider);
  v4.receiver = v2;
  v4.super_class = v1;
  v3 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v5);
  [v0 setView_];
}

Swift::Void __swiftcall NewsArticleViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v3 addSubview_];

      [v1 didMoveToParentViewController_];
      v6 = [*&v0[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_articleViewController] navigationItem];
      v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDone];
      [v6 setLeftBarButtonItem_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall NewsArticleViewController.viewDidLayoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id NewsArticleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25BEF8A68();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NewsArticleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_25BEEFFC0(size_t a1, int64_t a2, char a3)
{
  result = sub_25BEEFFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25BEEFFE0(size_t result, int64_t a2, char a3, void *a4)
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

  sub_25BEF0F84(0, &qword_27FBE9688, MEMORY[0x277D2FE30], MEMORY[0x277D84560]);
  v10 = *(sub_25BEF8378() - 8);
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
  v15 = *(sub_25BEF8378() - 8);
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

uint64_t sub_25BEF01DC(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v21[3] = sub_25BEF83D8();
  v21[4] = MEMORY[0x277D30218];
  v21[0] = a1;
  if (qword_281557D88 != -1)
  {
    swift_once();
  }

  sub_25BEED4F8(v19);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_25BEE59F0(0, &qword_27FBE9670);
  result = sub_25BEF8458();
  if (!v17)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BEE4EF4(&v16, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  if (qword_27FBE8D38 != -1)
  {
    swift_once();
  }

  v6 = sub_25BEF8778();
  __swift_project_value_buffer(v6, qword_27FBEBB78);
  sub_25BEF0F24();
  sub_25BEF8788();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_25BEE59F0(0, &qword_27FBE9680);
  sub_25BEEE6DC(v18, &v16);
  v7 = swift_allocObject();
  sub_25BEE4EF4(&v16, v7 + 16);
  sub_25BEF8438();

  if (!v15)
  {
    goto LABEL_10;
  }

  sub_25BEE4EF4(&v14, &v16);
  __swift_project_boxed_opaque_existential_1(&v16, v17);
  v8 = sub_25BEF83A8();
  v9 = [objc_allocWithZone(sub_25BEF8758()) initWithRootViewController_];
  *&a2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_articleViewController] = v8;
  *&a2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController] = v9;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_25BEE59F0(0, &unk_281558118);
  v10 = v8;
  v11 = v9;
  result = sub_25BEF8458();
  if (v15)
  {
    sub_25BEE4EF4(&v14, &a2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_sceneProvider]);
    v13.receiver = a2;
    v13.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t _s7NewsKit0A21ArticleViewControllerC8articlesACSayAA0aC0VG_tcfC_0(uint64_t a1)
{
  sub_25BEF0F84(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v39 - v4;
  v50 = sub_25BEF8358();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsArticle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_25BEF8378();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v49);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25BEF8388();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a1 + 16);
  if (v21)
  {
    v39 = v17;
    v40 = v16;
    v41 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = MEMORY[0x277D84F90];
    sub_25BEEFFC0(0, v21, 0);
    v22 = v52;
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v42 = a1;
    v24 = a1 + v23;
    v47 = *(v9 + 72);
    v46 = *MEMORY[0x277D2FE18];
    v44 = v13 + 32;
    v45 = (v5 + 104);
    v25 = v43;
    do
    {
      v26 = v13;
      sub_25BEF0E64(v24, v12);
      v27 = *v12;
      v28 = v12[1];
      v29 = sub_25BEF8098();
      (*(*(v29 - 8) + 56))(v51, 1, 1, v29);

      v30 = v48;
      sub_25BEF8308();
      (*v45)(v30, v46, v50);
      sub_25BEF8368();
      sub_25BEF0EC8(v12);
      v52 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_25BEEFFC0(v31 > 1, v32 + 1, 1);
        v25 = v43;
        v22 = v52;
      }

      *(v22 + 16) = v32 + 1;
      v13 = v26;
      (*(v26 + 32))(v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v32, v25, v49);
      v24 += v47;
      --v21;
    }

    while (v21);

    v16 = v40;
    v20 = v41;
    v17 = v39;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *v20 = v22;
  (*(v17 + 104))(v20, *MEMORY[0x277D2FE60], v16);
  v33 = sub_25BEF83D8();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_25BEF83C8();
  v37 = objc_allocWithZone(type metadata accessor for NewsArticleViewController());
  return sub_25BEF01DC(v36, v37);
}

uint64_t _s7NewsKit0A21ArticleViewControllerC11identifiersACSaySSG_tcfC_0(uint64_t a1)
{
  sub_25BEF0F84(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v34 - v4;
  v45 = sub_25BEF8358();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25BEF8378();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25BEF8388();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + 16);
  if (v18)
  {
    v35 = v14;
    v36 = v13;
    v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = MEMORY[0x277D84F90];
    sub_25BEEFFC0(0, v18, 0);
    v19 = v47;
    v43 = sub_25BEF8098();
    v20 = *(v43 - 8);
    v21 = *(v20 + 56);
    v41 = v20 + 56;
    v42 = v21;
    v40 = *MEMORY[0x277D2FE18];
    v22 = (v5 + 104);
    v38 = a1;
    v39 = v9 + 32;
    v23 = (a1 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v42(v46, 1, 1, v43);
      swift_bridgeObjectRetain_n();
      sub_25BEF8308();
      (*v22)(v8, v40, v45);
      sub_25BEF8368();

      v47 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25BEEFFC0(v26 > 1, v27 + 1, 1);
        v19 = v47;
      }

      *(v19 + 16) = v27 + 1;
      (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v12, v44);
      v23 += 2;
      --v18;
    }

    while (v18);

    v13 = v36;
    v17 = v37;
    v14 = v35;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *v17 = v19;
  (*(v14 + 104))(v17, *MEMORY[0x277D2FE60], v13);
  v28 = sub_25BEF83D8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_25BEF83C8();
  v32 = objc_allocWithZone(type metadata accessor for NewsArticleViewController());
  return sub_25BEF01DC(v31, v32);
}

uint64_t sub_25BEF0E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF0EC8(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BEF0F24()
{
  result = qword_27FBE9678;
  if (!qword_27FBE9678)
  {
    sub_25BEF8778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9678);
  }

  return result;
}

void sub_25BEF0F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25BEF0FE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_25BEF3A78(0, &qword_2815581C8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *&v67 = &v61 - v8;
  v9 = sub_25BEF80D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v61 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v61 - v14;
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], v5);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - v17;
  v69 = type metadata accessor for NewsArticle();
  v19 = v69[6];
  v20 = sub_25BEF8098();
  v62 = *(*(v20 - 8) + 56);
  v63 = v19;
  v62(a3 + v19, 1, 1, v20);
  v21 = [a1 identifier];
  v22 = sub_25BEF8A98();
  v24 = v23;

  v64 = v24;
  v65 = v22;
  *a3 = v22;
  a3[1] = v24;

  v25 = a1;
  v26 = [a1 title];
  if (v26)
  {
    v27 = v26;
    v28 = sub_25BEF8A98();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  a3[2] = v28;
  a3[3] = v30;
  v31 = v25;
  v32 = [v25 thumbnail];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 thumbnailAssetHandle];

    if (!v34)
    {
      __break(1u);
      return;
    }

    v35 = [v34 remoteURL];

    sub_25BEF8088();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v62(v18, v36, 1, v20);
  sub_25BEF1964(v18, a3 + v63);
  v37 = [v25 publishDate];
  if (v37)
  {
    v38 = v61;
    v39 = v37;
    sub_25BEF80B8();

    v40 = *(v10 + 32);
    v41 = v67;
    v40(v67, v38, v9);
    (*(v10 + 56))(v41, 0, 1, v9);
    v42 = v66;
    v40(v66, v41, v9);
  }

  else
  {
    v43 = v67;
    (*(v10 + 56))(v67, 1, 1, v9);
    v42 = v66;
    sub_25BEF80C8();
    if ((*(v10 + 48))(v43, 1, v9) != 1)
    {
      sub_25BEF39B8(v43, &qword_2815581C8, MEMORY[0x277CC9578]);
    }
  }

  (*(v10 + 32))(a3 + v69[7], v42, v9);
  sub_25BEF3A28(0, &qword_2815575A8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  v67 = xmmword_25BEFBAC0;
  *(v44 + 16) = xmmword_25BEFBAC0;
  *(v44 + 56) = MEMORY[0x277D837D0];
  v45 = v64;
  *(v44 + 32) = v65;
  *(v44 + 40) = v45;
  v46 = sub_25BEF8AD8();

  sub_25BEF3A78(0, &qword_2815575F0, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v47 = *(sub_25BEF8058() - 8);
  v48 = *(v47 + 72);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  *(swift_allocObject() + 16) = v67;
  v50 = [objc_opt_self() mainBundle];
  v51 = [v50 bundleIdentifier];

  if (v51)
  {
    sub_25BEF8A98();
  }

  v52 = objc_opt_self();
  sub_25BEF8048();

  v53 = sub_25BEF8AD8();

  v54 = [v52 nss:v46 NewsURLWithPathComponents:v53 queryItems:0 internal:?];

  v55 = v69;
  v56 = a3 + v69[8];
  sub_25BEF8088();

  v57 = v68;
  sub_25BEF1C48(v68, a3 + v55[9], type metadata accessor for NewsChannel);
  v58 = [v31 authors];
  if (v58)
  {
    v59 = v58;
    v60 = sub_25BEF8AE8();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v60 = MEMORY[0x277D84F90];
  }

  sub_25BEF2CF4(v57, type metadata accessor for NewsChannel);
  *(a3 + v69[10]) = v60;
}

uint64_t NewsArticle.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NewsArticle.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NewsArticle.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NewsArticle.thumbnailURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticle() + 24);

  return sub_25BEF188C(v3, a1);
}

uint64_t type metadata accessor for NewsArticle()
{
  result = qword_281557F98;
  if (!qword_281557F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BEF188C(uint64_t a1, uint64_t a2)
{
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticle.thumbnailURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NewsArticle() + 24);

  return sub_25BEF1964(a1, v3);
}

uint64_t sub_25BEF1964(uint64_t a1, uint64_t a2)
{
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticle.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticle() + 28);
  v4 = sub_25BEF80D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticle.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticle() + 32);
  v4 = sub_25BEF8098();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticle.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticle() + 32);
  v4 = sub_25BEF8098();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25BEF1C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NewsArticle.channel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NewsArticle() + 36);

  return sub_25BEF1CF4(a1, v3);
}

uint64_t sub_25BEF1CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticle.authors.getter()
{
  v1 = *(v0 + *(type metadata accessor for NewsArticle() + 40));
}

uint64_t NewsArticle.authors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticle() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25BEF1E5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C656E6E616863;
  if (v1 != 5)
  {
    v3 = 0x73726F68747561;
  }

  v4 = 0x446873696C627570;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x69616E626D756874;
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

uint64_t sub_25BEF1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BEF3698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BEF1F64(uint64_t a1)
{
  v2 = sub_25BEF2394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEF1FA0(uint64_t a1)
{
  v2 = sub_25BEF2394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticle.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25BEF2C90(0, &qword_27FBE9690, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF2394();
  sub_25BEF8D78();
  v12 = *v3;
  v13 = v3[1];
  v28 = 0;
  sub_25BEF8C98();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v27 = 1;
    sub_25BEF8C98();
    v16 = type metadata accessor for NewsArticle();
    v17 = v16[6];
    v26 = 2;
    sub_25BEF8098();
    sub_25BEF3970(&qword_27FBE96A0, MEMORY[0x277CC9260]);
    sub_25BEF8C88();
    v21[0] = v16[7];
    v25 = 3;
    sub_25BEF80D8();
    sub_25BEF3970(&qword_27FBE96A8, MEMORY[0x277CC9578]);
    sub_25BEF8CB8();
    v18 = v16[8];
    v24 = 4;
    sub_25BEF8CB8();
    v19 = v16[9];
    v23 = 5;
    type metadata accessor for NewsChannel();
    sub_25BEF3970(&qword_27FBE96B0, type metadata accessor for NewsChannel);
    sub_25BEF8CB8();
    v21[1] = *(v3 + v16[10]);
    v22 = 6;
    sub_25BEF3A28(0, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_25BEF2DB8(&qword_27FBE96B8);
    sub_25BEF8CB8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_25BEF2394()
{
  result = qword_27FBE9698;
  if (!qword_27FBE9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9698);
  }

  return result;
}

uint64_t NewsArticle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v61 = type metadata accessor for NewsChannel();
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEF8098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v63 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_25BEF80D8();
  v64 = *(v67 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v56[-v13];
  sub_25BEF2C90(0, &qword_27FBE96C0, MEMORY[0x277D844C8]);
  v68 = v15;
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v56[-v17];
  v19 = type metadata accessor for NewsArticle();
  v20 = *(*(v19 - 8) + 64);
  v22 = *(MEMORY[0x28223BE20](v19) + 24);
  v23 = v6;
  v24 = *(v6 + 56);
  v72 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = v22;
  v24(v72 + v22, 1, 1, v5);
  v26 = a1[3];
  v25 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_25BEF2394();
  v27 = v71;
  sub_25BEF8D68();
  if (v27)
  {
    v71 = v27;
    __swift_destroy_boxed_opaque_existential_1(v69);
    return sub_25BEF39B8(v72 + v70, &qword_2815581D0, MEMORY[0x277CC9260]);
  }

  v28 = v65;
  v29 = v66;
  v58 = v19;
  v59 = v23;
  v30 = v67;
  v80 = 0;
  v31 = sub_25BEF8C58();
  v33 = v72;
  *v72 = v31;
  v33[1] = v34;
  v79 = 1;
  v35 = sub_25BEF8C58();
  v36 = v72;
  v72[2] = v35;
  v36[3] = v37;
  v78 = 2;
  sub_25BEF3970(&qword_27FBE96C8, MEMORY[0x277CC9260]);
  sub_25BEF8C48();
  v71 = 0;
  sub_25BEF1964(v14, v72 + v70);
  v77 = 3;
  sub_25BEF3970(&qword_27FBE96D0, MEMORY[0x277CC9578]);
  v38 = v71;
  sub_25BEF8C78();
  v57 = v38 == 0;
  v71 = v38;
  if (v38)
  {
    (*(v28 + 8))(v18, v68);
    v39 = 0;
    v40 = 0;
    v41 = v58;
    v42 = v59;
  }

  else
  {
    v41 = v58;
    (*(v64 + 32))(v72 + v58[7], v29, v30);
    v76 = 4;
    v43 = v63;
    v44 = v71;
    sub_25BEF8C78();
    v71 = v44;
    v42 = v59;
    if (v44)
    {
      (*(v28 + 8))(v18, v68);
      v39 = 0;
      v40 = 0;
    }

    else
    {
      (*(v59 + 32))(v72 + v41[8], v43, v5);
      v75 = 5;
      sub_25BEF3970(&qword_27FBE96D8, type metadata accessor for NewsChannel);
      v45 = v62;
      v46 = v71;
      sub_25BEF8C78();
      v71 = v46;
      if (v46)
      {
        (*(v28 + 8))(v18, v68);
        v40 = 0;
        v39 = 1;
      }

      else
      {
        sub_25BEF2D54(v45, v72 + v41[9]);
        sub_25BEF3A28(0, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        v74 = 6;
        sub_25BEF2DB8(&qword_27FBE96E0);
        v47 = v71;
        sub_25BEF8C78();
        v71 = v47;
        if (!v47)
        {
          (*(v28 + 8))(v18, v68);
          v55 = v72;
          *(v72 + v41[10]) = v73;
          sub_25BEF1C48(v55, v60, type metadata accessor for NewsArticle);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v53 = type metadata accessor for NewsArticle;
          v54 = v55;
          return sub_25BEF2CF4(v54, v53);
        }

        (*(v28 + 8))(v18, v68);
        v39 = 1;
        v40 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v69);
  v48 = v72;
  v49 = v72[1];

  v50 = v67;
  v51 = v57;
  v52 = v48[3];

  result = sub_25BEF39B8(v48 + v70, &qword_2815581D0, MEMORY[0x277CC9260]);
  if (v51)
  {
    result = (*(v64 + 8))(v48 + v41[7], v50);
    if ((v39 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (!v39)
  {
LABEL_15:
    if (v40)
    {
      goto LABEL_19;
    }

    return result;
  }

  result = (*(v42 + 8))(v48 + v41[8], v5);
  if (v40)
  {
LABEL_19:
    v53 = type metadata accessor for NewsChannel;
    v54 = v48 + v41[9];
    return sub_25BEF2CF4(v54, v53);
  }

  return result;
}

void sub_25BEF2C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEF2394();
    v7 = a3(a1, &type metadata for NewsArticle.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEF2CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BEF2D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF2DB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25BEF3A28(255, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BEF2E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25BEF8CD8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _s7NewsKit0A7ArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25BEF8098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  sub_25BEF38DC();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25BEF8CD8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_25BEF8CD8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = type metadata accessor for NewsArticle();
  v18 = *(v29 + 24);
  v19 = *(v14 + 48);
  sub_25BEF188C(a1 + v18, v17);
  sub_25BEF188C(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_25BEF188C(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_25BEF3970(&qword_27FBE9708, MEMORY[0x277CC9260]);
      v21 = sub_25BEF8A58();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_25BEF39B8(v17, &qword_2815581D0, MEMORY[0x277CC9260]);
      if (v21)
      {
        goto LABEL_14;
      }

LABEL_18:
      v26 = 0;
      return v26 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_25BEF2CF4(v17, sub_25BEF38DC);
    goto LABEL_18;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_25BEF39B8(v17, &qword_2815581D0, MEMORY[0x277CC9260]);
LABEL_14:
  v23 = v29;
  v24 = *(v29 + 28);
  if ((sub_25BEF80A8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v25 = v23[8];
  if ((sub_25BEF8078() & 1) == 0 || !_s7NewsKit0A7ChannelV2eeoiySbAC_ACtFZ_0((a1 + v23[9]), (a2 + v23[9])))
  {
    goto LABEL_18;
  }

  v26 = sub_25BEF2E70(*(a1 + v23[10]), *(a2 + v23[10]));
  return v26 & 1;
}

void sub_25BEF3310()
{
  sub_25BEF3A78(319, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25BEF80D8();
    if (v1 <= 0x3F)
    {
      sub_25BEF8098();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NewsChannel();
        if (v3 <= 0x3F)
        {
          sub_25BEF3A28(319, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewsArticle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BEF3594()
{
  result = qword_27FBE96E8;
  if (!qword_27FBE96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE96E8);
  }

  return result;
}

unint64_t sub_25BEF35EC()
{
  result = qword_27FBE96F0;
  if (!qword_27FBE96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE96F0);
  }

  return result;
}

unint64_t sub_25BEF3644()
{
  result = qword_27FBE96F8;
  if (!qword_27FBE96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE96F8);
  }

  return result;
}

uint64_t sub_25BEF3698(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_25BEF38DC()
{
  if (!qword_27FBE9700)
  {
    sub_25BEF3A78(255, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE9700);
    }
  }
}

uint64_t sub_25BEF3970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BEF39B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25BEF3A78(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_25BEF3A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25BEF3A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25BEF3ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_25BEF8328() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BEF82E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D2F9B0])
  {
    (*(v8 + 96))(v11, v7);
    v13 = *v11;
    v14 = objc_opt_self();
    sub_25BEF4394();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25BEFBAC0;
    v16 = [v13 identifier];
    v17 = sub_25BEF8A98();
    v19 = v18;

    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v20 = sub_25BEF8AD8();

    v21 = [v14 nss:v20 NewsURLWithPathComponents:0 internal:?];

    sub_25BEF8088();
    swift_unknownObjectRelease();

LABEL_3:
    v22 = sub_25BEF8098();
    return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  if (v12 == *MEMORY[0x277D2F9A8])
  {
    (*(v8 + 96))(v11, v7);
    v24 = *v11;
    sub_25BEF44AC();
    v26 = v25[12];
    v27 = v25[16];
    v28 = *(v11 + v25[20]);
    swift_unknownObjectRelease();
    v29 = objc_opt_self();
    sub_25BEF4394();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_25BEFBAC0;
    v31 = [v24 identifier];
    v32 = sub_25BEF8A98();
    v34 = v33;

    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    v35 = sub_25BEF8AD8();

    v36 = [v29 nss:v35 NewsURLWithPathComponents:0 internal:?];

    sub_25BEF8088();
    swift_unknownObjectRelease();

    v37 = sub_25BEF8098();
    (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
    __swift_destroy_boxed_opaque_existential_1((v11 + v27));
    v38 = sub_25BEF8398();
    return (*(*(v38 - 8) + 8))(v11 + v26, v38);
  }

  else
  {
    if (v12 == *MEMORY[0x277D2F980])
    {
      (*(v8 + 96))(v11, v7);
      sub_25BEF43E8(v11, v6);
      v39 = objc_opt_self();
      sub_25BEF4394();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_25BEFBAC0;
      v41 = sub_25BEF8318();
      *(v40 + 56) = MEMORY[0x277D837D0];
      *(v40 + 32) = v41;
      *(v40 + 40) = v42;
      v43 = sub_25BEF8AD8();

      v44 = [v39 nss:v43 NewsURLWithPathComponents:0 internal:?];

      sub_25BEF8088();
      sub_25BEF444C(v6, MEMORY[0x277D2FB40]);
      goto LABEL_3;
    }

    if (v12 == *MEMORY[0x277D2F990])
    {
      (*(v8 + 96))(v11, v7);
      v45 = *v11;
      v46 = v11[1];
      v47 = objc_opt_self();
      sub_25BEF4394();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_25BEFBAC0;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 32) = v45;
      *(v48 + 40) = v46;
      v49 = sub_25BEF8AD8();

      v50 = [v47 nss:v49 NewsURLWithPathComponents:0 internal:?];

      sub_25BEF8088();
      goto LABEL_3;
    }

    v51 = sub_25BEF8098();
    (*(*(v51 - 8) + 56))(a2, 1, 1, v51);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_25BEF4170(uint64_t a1)
{
  sub_25BEE654C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25BEF8098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF3ADC(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_25BEF444C(v5, sub_25BEE654C);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_25BEF8068();
  sub_25BEE9AB8(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25BEE9BB4();
  v14 = sub_25BEF8A48();

  [v12 openURL:v13 options:v14 completionHandler:0];

  return (*(v7 + 8))(v10, v6);
}

void sub_25BEF4394()
{
  if (!qword_2815575A8)
  {
    v0 = sub_25BEF8CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2815575A8);
    }
  }
}

uint64_t sub_25BEF43E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BEF8328();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF444C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25BEF44AC()
{
  if (!qword_27FBE9720)
  {
    MEMORY[0x28223BE20]();
    sub_25BEEB164();
    sub_25BEF8398();
    sub_25BEE50D0(255, &qword_27FBE9790);
    sub_25BEE50D0(255, &qword_27FBE9798);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27FBE9720);
    }
  }
}

void sub_25BEF45F4(void *a1@<X0>, double *a2@<X8>)
{
  sub_25BEE654C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  if (a1 && (v14 = [a1 bannerImageForWhiteBackground]) != 0)
  {
    v15 = v14;
    v16 = [v14 assetHandle];

    if (!v16)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v17 = [v16 remoteURL];

    sub_25BEF8088();
    v18 = sub_25BEF8098();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  else
  {
    v19 = sub_25BEF8098();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  }

  v20 = type metadata accessor for NewsChannelLogoCollection();
  sub_25BEF5BC0(v13, a2 + v20[5]);
  if (!a1 || (v21 = [a1 bannerImageForThemeBackground]) == 0)
  {
    v26 = sub_25BEF8098();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    sub_25BEF5BC0(v11, a2 + v20[6]);
    if (!a1)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v22 = v21;
  v23 = [v21 assetHandle];

  if (v23)
  {
    v24 = [v23 remoteURL];

    sub_25BEF8088();
    v25 = sub_25BEF8098();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    sub_25BEF5BC0(v11, a2 + v20[6]);
LABEL_11:
    v27 = [a1 bannerImageForMask];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 assetHandle];

      if (v29)
      {
        v30 = [v29 remoteURL];

        sub_25BEF8088();
        v31 = sub_25BEF8098();
        (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
        sub_25BEF5BC0(v8, a2 + v20[7]);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_14:
    v32 = sub_25BEF8098();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    sub_25BEF5BC0(v8, a2 + v20[7]);
    if (!a1)
    {
      v34 = 1.0;
      goto LABEL_16;
    }

LABEL_15:
    [a1 bannerImageScale];
    v34 = v33;
    swift_unknownObjectRelease();
LABEL_16:
    *a2 = v34;
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t NewsChannelLogoCollection.LogoTheme.hashValue.getter()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

uint64_t NewsChannelLogoCollection.url(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for NewsChannelLogoCollection();
  return sub_25BEF5C24(v2 + *(v5 + qword_25BEFBF78[v4]), a2, sub_25BEE654C);
}

unint64_t sub_25BEF4B24()
{
  v1 = 0x656C616373;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6B73614D726F66;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BEF4BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BEF5EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BEF4BCC(uint64_t a1)
{
  v2 = sub_25BEF5B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEF4C08(uint64_t a1)
{
  v2 = sub_25BEF5B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsChannelLogoCollection.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25BEF5B5C(0, &qword_27FBE97A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF5B08();
  sub_25BEF8D78();
  v12 = *v3;
  v22 = 0;
  sub_25BEF8CA8();
  if (!v2)
  {
    v13 = type metadata accessor for NewsChannelLogoCollection();
    v14 = v13[5];
    v21 = 1;
    sub_25BEF8098();
    sub_25BEF6088(&qword_27FBE96A0);
    sub_25BEF8C88();
    v15 = v13[6];
    v20 = 2;
    sub_25BEF8C88();
    v16 = v13[7];
    v19 = 3;
    sub_25BEF8C88();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t NewsChannelLogoCollection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_25BEE654C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  sub_25BEF5B5C(0, &qword_27FBE97B0, MEMORY[0x277D844C8]);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for NewsChannelLogoCollection();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF5B08();
  v40 = v15;
  v21 = v41;
  sub_25BEF8D68();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v41 = a1;
  v23 = v38;
  v24 = v39;
  v45 = 0;
  sub_25BEF8C68();
  *v19 = v25;
  v26 = sub_25BEF8098();
  v44 = 1;
  v34 = sub_25BEF6088(&qword_27FBE96C8);
  v35 = v26;
  sub_25BEF8C48();
  v27 = v16[5];
  v33 = v19;
  sub_25BEF5BC0(v22, v19 + v27);
  v43 = 2;
  sub_25BEF8C48();
  sub_25BEF5BC0(v9, v33 + v16[6]);
  v42 = 3;
  v28 = v37;
  sub_25BEF8C48();
  (*(v23 + 8))(v40, v24);
  v29 = v16[7];
  v30 = v33;
  sub_25BEF5BC0(v28, v33 + v29);
  sub_25BEF5C24(v30, v36, type metadata accessor for NewsChannelLogoCollection);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_25BEF6028(v30, type metadata accessor for NewsChannelLogoCollection);
}

BOOL _s7NewsKit0A21ChannelLogoCollectionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_25BEF8098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25BEE654C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v69 = &v61[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v61[-v16];
  sub_25BEF38DC();
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v70 = &v61[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v61[-v26];
  if (*a1 != *a2)
  {
    return 0;
  }

  v63 = v13;
  v64 = v8;
  v67 = type metadata accessor for NewsChannelLogoCollection();
  v28 = v67[5];
  v29 = a1;
  v30 = *(v19 + 48);
  v65 = v29;
  sub_25BEF5C24(v29 + v28, v27, sub_25BEE654C);
  v66 = a2;
  sub_25BEF5C24(a2 + v28, &v27[v30], sub_25BEE654C);
  v68 = v5;
  v31 = *(v5 + 48);
  if (v31(v27, 1, v4) == 1)
  {
    if (v31(&v27[v30], 1, v4) == 1)
    {
      sub_25BEF6028(v27, sub_25BEE654C);
      goto LABEL_9;
    }

LABEL_7:
    v32 = v27;
LABEL_22:
    sub_25BEF6028(v32, sub_25BEF38DC);
    return 0;
  }

  sub_25BEF5C24(v27, v17, sub_25BEE654C);
  if (v31(&v27[v30], 1, v4) == 1)
  {
    (*(v68 + 8))(v17, v4);
    goto LABEL_7;
  }

  v33 = v68;
  v34 = &v27[v30];
  v35 = v64;
  (*(v68 + 32))(v64, v34, v4);
  sub_25BEF6088(&qword_27FBE9708);
  v62 = sub_25BEF8A58();
  v36 = *(v33 + 8);
  v36(v35, v4);
  v36(v17, v4);
  sub_25BEF6028(v27, sub_25BEE654C);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v37 = v67[6];
  v38 = *(v19 + 48);
  v39 = v65;
  sub_25BEF5C24(v65 + v37, v25, sub_25BEE654C);
  v40 = v66 + v37;
  v41 = v66;
  sub_25BEF5C24(v40, &v25[v38], sub_25BEE654C);
  if (v31(v25, 1, v4) != 1)
  {
    v42 = v69;
    sub_25BEF5C24(v25, v69, sub_25BEE654C);
    if (v31(&v25[v38], 1, v4) != 1)
    {
      v43 = v68;
      v44 = v64;
      (*(v68 + 32))(v64, &v25[v38], v4);
      sub_25BEF6088(&qword_27FBE9708);
      v45 = sub_25BEF8A58();
      v46 = *(v43 + 8);
      v47 = v44;
      v39 = v65;
      v46(v47, v4);
      v46(v42, v4);
      v41 = v66;
      sub_25BEF6028(v25, sub_25BEE654C);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v68 + 8))(v42, v4);
    goto LABEL_14;
  }

  if (v31(&v25[v38], 1, v4) != 1)
  {
LABEL_14:
    v32 = v25;
    goto LABEL_22;
  }

  sub_25BEF6028(v25, sub_25BEE654C);
LABEL_16:
  v48 = v67[7];
  v49 = *(v19 + 48);
  v50 = v39 + v48;
  v51 = v70;
  sub_25BEF5C24(v50, v70, sub_25BEE654C);
  sub_25BEF5C24(v41 + v48, &v51[v49], sub_25BEE654C);
  if (v31(v51, 1, v4) == 1)
  {
    if (v31(&v70[v49], 1, v4) == 1)
    {
      sub_25BEF6028(v70, sub_25BEE654C);
      return 1;
    }

    goto LABEL_21;
  }

  v52 = v70;
  v53 = v63;
  sub_25BEF5C24(v70, v63, sub_25BEE654C);
  if (v31(&v52[v49], 1, v4) == 1)
  {
    (*(v68 + 8))(v53, v4);
LABEL_21:
    v32 = v70;
    goto LABEL_22;
  }

  v55 = v68;
  v56 = v70;
  v57 = &v70[v49];
  v58 = v64;
  (*(v68 + 32))(v64, v57, v4);
  sub_25BEF6088(&qword_27FBE9708);
  v59 = sub_25BEF8A58();
  v60 = *(v55 + 8);
  v60(v58, v4);
  v60(v53, v4);
  sub_25BEF6028(v56, sub_25BEE654C);
  return (v59 & 1) != 0;
}

uint64_t type metadata accessor for NewsChannelLogoCollection()
{
  result = qword_281558030;
  if (!qword_281558030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25BEF5B08()
{
  result = qword_27FBE97A8;
  if (!qword_27FBE97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97A8);
  }

  return result;
}

void sub_25BEF5B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEF5B08();
    v7 = a3(a1, &type metadata for NewsChannelLogoCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEF5BC0(uint64_t a1, uint64_t a2)
{
  sub_25BEE654C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF5C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25BEF5C90()
{
  result = qword_27FBE97B8;
  if (!qword_27FBE97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97B8);
  }

  return result;
}

void sub_25BEF5D0C()
{
  sub_25BEE654C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25BEF5DB4()
{
  result = qword_27FBE97C0;
  if (!qword_27FBE97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97C0);
  }

  return result;
}

unint64_t sub_25BEF5E0C()
{
  result = qword_27FBE97C8;
  if (!qword_27FBE97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97C8);
  }

  return result;
}

unint64_t sub_25BEF5E64()
{
  result = qword_27FBE97D0;
  if (!qword_27FBE97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97D0);
  }

  return result;
}

uint64_t sub_25BEF5EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BEFC7F0 == a2 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BEFC810 == a2 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B73614D726F66 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25BEF6028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BEF6088(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25BEF8098();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_25BEF6260(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D75348]);
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D75348]);
    v18 = a6;
    v19 = a7;
    v20 = a8;
    v21 = a9;
  }

  return [v17 initWithRed:v18 green:v19 blue:v20 alpha:v21];
}

uint64_t sub_25BEF6328@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25BEF86D8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_25BEF86C8();
  v6 = MEMORY[0x277D6D498];
  a1[3] = v2;
  a1[4] = v6;
  *a1 = result;
  return result;
}

unint64_t sub_25BEF6380@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EngagementUpsellBannerPropertiesProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_25BEF65AC();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_25BEF63F8()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEE59F0(0, &unk_281558118);
  sub_25BEF84F8();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_25BEF8418();

  (*(v1 + 8))(v4, v0);
  sub_25BEF8488();
  sub_25BEE59F0(0, &unk_281558168);
  sub_25BEF84F8();
}

unint64_t sub_25BEF65AC()
{
  result = qword_27FBE97D8;
  if (!qword_27FBE97D8)
  {
    type metadata accessor for EngagementUpsellBannerPropertiesProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97D8);
  }

  return result;
}

uint64_t sub_25BEF6694@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = swift_allocObject();
  a4[3] = v7;
  result = sub_25BEF68AC(a2, a3);
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_25BEF6778()
{
  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_2815581C0);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_2815581B8);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &unk_281558150);
  sub_25BEF84F8();
}

uint64_t sub_25BEF68AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BEF6AD0(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_281557D88 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  return a2();
}

id sub_25BEF6B34()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_25BEF6B74(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  result = sub_25BEF8448();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_25BEF6BD8()
{
  result = [objc_opt_self() sharedNetworkReachability];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_25BEF6C14(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7FD4(0, &qword_2815576F0, &protocolRef_FCContentContext);
  result = sub_25BEF8448();
  if (result)
  {
    v3 = [result news_core_ConfigurationManager];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BEF6CAC(void *a1, SEL *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  result = sub_25BEF8448();
  if (result)
  {
    v5 = result;
    v6 = [result *a2];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25BEF6D58(void *a1, SEL *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  v4 = sub_25BEF8448();
  if (!v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v4 *a2];

  if (!v6)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_25BEF6E00()
{
  v0 = [objc_opt_self() defaultAvailability];

  return v0;
}

id sub_25BEF6E40()
{
  v0 = objc_allocWithZone(MEMORY[0x277D312A0]);

  return [v0 init];
}

uint64_t sub_25BEF6E9C(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_25BEF7FD4(0, &unk_27FBE9A50, &protocolRef_FCEntitlementsOverrideProviderType);
  [v2 setEntitlementsOverrideProvider_];

  return swift_unknownObjectRelease();
}

id sub_25BEF6F38()
{
  v0 = objc_allocWithZone(type metadata accessor for StubAppActivityMonitor());

  return [v0 init];
}

uint64_t sub_25BEF6F98(uint64_t a1)
{
  v2 = sub_25BEF8508();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  sub_25BEF84E8();

  v7 = *MEMORY[0x277D6CF10];
  v8 = v3[13];
  v8(v6, v7, v2);
  sub_25BEF8418();

  v9 = v3[1];
  v9(v6, v2);
  sub_25BEF8408();

  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_281557630, &protocolRef_FCCoreConfigurationManager);
  sub_25BEF84E8();

  v8(v6, v7, v2);
  v21 = v3 + 13;
  sub_25BEF8418();

  v9(v6, v2);
  sub_25BEF8498();
  sub_25BEF7FD4(0, &unk_2815576B8, &protocolRef_FCFeldsparIDProvider);
  sub_25BEF84E8();

  v17 = v7;
  v8(v6, v7, v2);
  sub_25BEF8418();

  v9(v6, v2);
  v20 = v9;
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_2815576F0, &protocolRef_FCContentContext);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_2815576A8, &protocolRef_FCPrivateDataContext);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_281557690, 0x277D31140);
  sub_25BEF84E8();

  v8(v6, v7, v2);
  sub_25BEF8418();

  v9(v6, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557620, &protocolRef_FCNewsAppConfigurationManager);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_27FBE98C0, 0x277D310B8);
  sub_25BEF84E8();

  v10 = v17;
  v19 = v8;
  v8(v6, v17, v2);
  sub_25BEF8418();

  v11 = v20;
  v20(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_2815576E8, 0x277D31278);
  sub_25BEF84E8();

  v8(v6, v10, v2);
  sub_25BEF8418();

  v11(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557720, 0x277D31288);
  sub_25BEF84E8();

  v12 = v19;
  v19(v6, v10, v2);
  sub_25BEF8418();

  v11(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557648, 0x277D31330);
  sub_25BEF84E8();

  v12(v6, v10, v2);
  sub_25BEF8418();

  v11(v6, v2);
  v16 = a1;
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557650, 0x277D31178);
  sub_25BEF84E8();

  v13 = v19;
  v19(v6, v10, v2);
  sub_25BEF8418();

  v11(v6, v2);
  sub_25BEF8488();
  v18 = sub_25BEF7F8C(0, &unk_281557678, 0x277D31078);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v11(v6, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557640, &protocolRef_FCIssueReadingHistoryType);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14 = v20;
  v20(v6, v2);
  sub_25BEF8488();
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557658, &protocolRef_FCPaidAccessCheckerType);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_281557700, 0x277D30E10);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557618, 0x277D31200);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_281557660, &protocolRef_FCReceiptRefresherType);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_2815576C8, 0x277D30F88);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_2815576A0, 0x277D31210);
  sub_25BEF84E8();

  sub_25BEF8408();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557688, &protocolRef_FCPurchaseManagerType);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557670, &protocolRef_FCPurchaseProviderType);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_2815575F8, &protocolRef_FCBundleSubscriptionManagerType);
  sub_25BEF84E8();

  sub_25BEF8408();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_281557710, 0x277D31368);
  sub_25BEF84E8();

  v13(v6, v10, v2);
  sub_25BEF8418();

  v14(v6, v2);
  sub_25BEF8498();
  sub_25BEF7FD4(0, &qword_2815576D8, &protocolRef_FCAppActivityMonitor);
  sub_25BEF84E8();
}

uint64_t sub_25BEF7F8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25BEF7FD4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}