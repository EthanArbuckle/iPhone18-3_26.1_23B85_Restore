uint64_t sub_21A1F8AB8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_21A1F8BC8, v1, 0);
}

uint64_t sub_21A1F8BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A1F8D48()
{
  sub_21A2F44D4();
  swift_allocObject();
  *(v0 + 32) = sub_21A2F44C4();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_21A1F8DF8;

  return sub_21A1F663C();
}

uint64_t sub_21A1F8DF8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_21A1F8F10, v2, 0);
}

uint64_t sub_21A1F8F10()
{
  v0[2] = v0[6];
  sub_21A1F96B4();
  v1 = sub_21A2F44B4();
  v2 = v0[3];
  v3 = v1;
  v5 = v4;

  v6 = *(v2 + 112);
  v7 = sub_21A2F4804();
  v8 = sub_21A2F78A4();
  [v6 setObject:v7 forKey:v8];

  sub_21A180748(v3, v5);
  v9 = v0[1];

  return v9();
}

uint64_t sub_21A1F9184()
{
  sub_21A1448F0(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21A1F91C8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_21A1F91E4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21A1F91F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21A1F9240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_21A1F9284(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_21A1F92AC(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A146070;

  return sub_21A1F6EDC(a1, a2);
}

uint64_t sub_21A1F9358(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A145E2C;

  return sub_21A1F75A0(a1);
}

uint64_t sub_21A1F93F0(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21A1F9484;

  return sub_21A1F663C();
}

uint64_t sub_21A1F9484(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_21A1F959C, v2, 0);
}

uint64_t sub_21A1F959C()
{
  v1 = v0[2];
  v2 = sub_21A1F62B0(v0[5]);

  sub_21A1883D4(v2, v1);

  v3 = v0[1];

  return v3();
}

void *sub_21A1F9630(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21A153D30(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21A1F96A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_21A1F96B4()
{
  result = qword_27CD01018;
  if (!qword_27CD01018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01018);
  }

  return result;
}

uint64_t sub_21A1F9708(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF1E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1F9778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1F97E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentCookingSessions.Entry();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1F9844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A153154(a1, v4, v5, v6);
}

unint64_t sub_21A1F98F8()
{
  result = qword_27CD01038;
  if (!qword_27CD01038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01038);
  }

  return result;
}

void sub_21A1F994C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SubStepTextElement(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v21 - v11);
  v23 = *(a1 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21 = a2;
    v22 = a1;
    while (v13 < *(a1 + 16))
    {
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      sub_21A2021B0(a1 + v15 + v16 * v13, v12, type metadata accessor for SubStepTextElement);
      v17 = sub_21A200B68(v12, a2);
      if (v2)
      {
        sub_21A202218(v12, type metadata accessor for SubStepTextElement);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_21A202314(v12, v24, type metadata accessor for SubStepTextElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21A25D7F0(0, *(v14 + 16) + 1, 1);
          v14 = v25;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21A25D7F0(v19 > 1, v20 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v20 + 1;
        sub_21A202314(v24, v14 + v15 + v20 * v16, type metadata accessor for SubStepTextElement);
        a2 = v21;
        a1 = v22;
      }

      else
      {
        sub_21A202218(v12, type metadata accessor for SubStepTextElement);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_21A1F9BC8()
{
  v1 = *(v0 + 64);
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      v3 = *(v0 + 48);
      v6 = *(v0 + 56);
      v5 = *(v0 + 32);
      v4 = *(v0 + 40);
      MEMORY[0x21CED6EE0](2);
      sub_21A2F79A4();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v5);
      MEMORY[0x21CED6EE0](v4);
      MEMORY[0x21CED6EE0](v3);
      MEMORY[0x21CED6EE0](v6);
      return MEMORY[0x21CED6EE0](v1 & 0x3F);
    }

    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
  }

  return sub_21A2F79A4();
}

uint64_t sub_21A1F9D00()
{
  v1 = sub_21A2F5294();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2021B0(v0, v9, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v9 + 2);
    v11 = *(v9 + 3);
    v12 = *(v9 + 4);
    v16 = *(v9 + 5);
    v13 = sub_21A176C98(&qword_27CD01068);
    (*(v2 + 32))(v5, &v9[*(v13 + 48)], v1);
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v10);
    MEMORY[0x21CED6EE0](v11);
    MEMORY[0x21CED6EE0](v12);
    MEMORY[0x21CED6EE0](v16);

    sub_21A1FDBFC(&qword_27CD01090, MEMORY[0x277D6CBB8]);
    sub_21A2F7804();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
  }
}

uint64_t sub_21A1F9F54()
{
  sub_21A2F8434();
  sub_21A1F9BC8();
  return sub_21A2F8474();
}

uint64_t sub_21A1F9F98()
{
  sub_21A2F8434();
  sub_21A1F9BC8();
  return sub_21A2F8474();
}

uint64_t sub_21A1F9FD4()
{
  sub_21A2F8434();
  sub_21A1F9D00();
  return sub_21A2F8474();
}

uint64_t sub_21A1FA018()
{
  sub_21A2F8434();
  sub_21A1F9D00();
  return sub_21A2F8474();
}

uint64_t sub_21A1FA058()
{
  sub_21A2F8434();
  if (*(v0 + 32) == 1)
  {
    sub_21A2F8454();
  }

  else
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v4 = *v0;
    v3 = *(v0 + 8);
    sub_21A2F8454();
    sub_21A201648(v4, v3, v2, v1);
  }

  sub_21A1F9D00();
  return sub_21A2F8474();
}

uint64_t sub_21A1FA108()
{
  if (*(v0 + 32) == 1)
  {
    sub_21A2F8454();
  }

  else
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v4 = *v0;
    v3 = *(v0 + 8);
    sub_21A2F8454();
    sub_21A201648(v4, v3, v2, v1);
  }

  return sub_21A1F9D00();
}

uint64_t sub_21A1FA1A0()
{
  sub_21A2F8434();
  if (*(v0 + 32) == 1)
  {
    sub_21A2F8454();
  }

  else
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    v4 = *v0;
    v3 = *(v0 + 8);
    sub_21A2F8454();
    sub_21A201648(v4, v3, v2, v1);
  }

  sub_21A1F9D00();
  return sub_21A2F8474();
}

uint64_t sub_21A1FA280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    v4 = a2;
    v5 = a3;
    v6 = a1;
    v7 = CGRectEqualToRect(*a1, *a2);
    a3 = v5;
    a2 = v4;
    v8 = v7;
    a1 = v6;
    if (!v8)
    {
      return 0;
    }
  }

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;

  return sub_21A20197C(v10, v11);
}

uint64_t sub_21A1FA314()
{
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  return sub_21A2F5434();
}

uint64_t sub_21A1FA3B8(uint64_t a1)
{
  v3 = sub_21A2F5434();
  v4 = sub_21A1A13A0(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1FA50C()
{
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  return *(v0 + 24);
}

uint64_t sub_21A1FA5AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21A1FA67C(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A1FA7B0(uint64_t a1)
{
  v3 = type metadata accessor for Recipe();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v32 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21A176C98(&qword_27CD01088);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = sub_21A176C98(&qword_27CCFF058);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  v33 = v1;
  v20 = v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe;
  v21 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe;
  sub_21A183960(v20, &v31 - v18, &qword_27CCFF058);
  v22 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CCFF058);
  v34 = a1;
  sub_21A183960(a1, &v11[v22], &qword_27CCFF058);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFF058);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CCFF058);
      v24 = v34;
LABEL_9:
      sub_21A1EF0A4(v24, v33 + v21, &qword_27CCFF058);
      return sub_21A1427A8(v24, &qword_27CCFF058);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v16, &qword_27CCFF058);
  if (v23(&v11[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFF058);
    sub_21A202218(v16, type metadata accessor for Recipe);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CD01088);
    v24 = v34;
    goto LABEL_7;
  }

  v28 = v32;
  sub_21A202314(&v11[v22], v32, type metadata accessor for Recipe);
  v29 = _s10CookingKit6RecipeV2eeoiySbAC_ACtFZ_0(v16, v28);
  sub_21A202218(v28, type metadata accessor for Recipe);
  sub_21A1427A8(v19, &qword_27CCFF058);
  sub_21A202218(v16, type metadata accessor for Recipe);
  sub_21A1427A8(v11, &qword_27CCFF058);
  v24 = v34;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v26);
  v27 = v33;
  *(&v31 - 2) = v33;
  *(&v31 - 1) = v24;
  v35 = v27;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CCFF058);
}

__n128 sub_21A1FAC30@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 16);
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24);
  result = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  return result;
}

__n128 sub_21A1FACF4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 16);
  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24);
  result = *(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_21A1FADB8(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_21A1FAE00(&v4);
}

uint64_t sub_21A1FAE00(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex;
  if ((*(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24) & 1) == 0)
  {
    if ((*(result + 24) & 1) == 0)
    {
      v7 = *v6 == v2 && *(v6 + 8) == v3;
      if (v7 && *(v6 + 16) == v4)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5084();
  }

  if ((*(result + 24) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

uint64_t sub_21A1FAF80@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  *a3 = *(v5 + *a2);
  return sub_21A2F5434();
}

uint64_t sub_21A1FB05C@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  return sub_21A183960(v3 + *a1, a3, a2);
}

uint64_t sub_21A1FB14C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  return sub_21A183960(v7 + *a2, a4, a3);
}

uint64_t sub_21A1FB244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_21A176C98(a5);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v15 - v12;
  sub_21A183960(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_21A1FB2F0(uint64_t a1)
{
  v3 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver;
  sub_21A183960(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver, v12 - v5, &qword_27CD01060);
  v8 = sub_21A201E20(v6, a1);
  sub_21A1427A8(v6, &qword_27CD01060);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[1] = v1;
    sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5084();
  }

  else
  {
    sub_21A1EF0A4(a1, v1 + v7, &qword_27CD01060);
  }

  return sub_21A1427A8(a1, &qword_27CD01060);
}

uint64_t sub_21A1FB4D0()
{
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  return sub_21A2F5434();
}

uint64_t sub_21A1FB5B0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = sub_21A2F5434();
  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A1FB710(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  v4 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe;
  v5 = type metadata accessor for Recipe();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 24) = 1;
  *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__timers) = sub_21A25F674(v3);
  *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers) = v3;
  v7 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver;
  v8 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__startingTimers) = MEMORY[0x277D84FA0];
  sub_21A2F50C4();
  v9 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel___scope;
  v10 = sub_21A2F7614();
  (*(*(v10 - 8) + 32))(v1 + v9, a1, v10);
  return v1;
}

uint64_t sub_21A1FB888()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19[-1] - v4;
  v6 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v19[-1] - v8;
  sub_21A1FA3B8(MEMORY[0x277D84F90]);
  if (*(v0 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    *(&v18 - 2) = v0;
    *(&v18 - 8) = 0;
    v19[0] = v0;
    sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v0 + 24) = 0;
  }

  v12 = type metadata accessor for Recipe();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_21A1FA7B0(v9);
  memset(v19, 0, sizeof(v19));
  v20 = 1;
  sub_21A1FAE00(v19);
  v13 = MEMORY[0x277D84F90];
  v14 = sub_21A25F674(MEMORY[0x277D84F90]);
  sub_21A1FB5B0(v14, &OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__timers, sub_21A191438);
  sub_21A1FB5B0(v13, &OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers, sub_21A1A172C);
  v15 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_21A1FB2F0(v5);
  swift_getKeyPath();
  v19[0] = v0;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v19[0] = v0;
  swift_getKeyPath();
  sub_21A2F50B4();

  v16 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__startingTimers;

  *(v1 + v16) = MEMORY[0x277D84FA0];
  v19[0] = v1;
  swift_getKeyPath();
  sub_21A2F50A4();
}

void sub_21A1FBC5C(uint64_t *a1, _OWORD *a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v52 = &v51 - v7;
  v53 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v53, v8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A2F5294();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v58 = &v51 - v15;
  v16 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v51 - v22;
  v24 = a1[1];
  v54 = *a1;
  v62 = v24;
  v25 = *(a1 + 1);
  v63 = *(a1 + 2);
  v55 = v25;
  swift_getKeyPath();
  v64 = v3;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver, v23, &qword_27CD01060);
  v26 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  v27 = *(v26 - 8);
  LODWORD(a1) = (*(v27 + 48))(v23, 1, v26);
  sub_21A1427A8(v23, &qword_27CD01060);
  if (a1 == 1)
  {
    swift_getKeyPath();
    v64 = v3;
    sub_21A2F5094();

    v28 = *(&v63 + 1);
    if ((*(&v63 + 1) & 0x8000000000000000) != 0 || (v29 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers, *(&v63 + 1) >= *(*(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers) + 16)))
    {
      if (qword_27CCFE7C8 != -1)
      {
        swift_once();
      }

      v39 = sub_21A2F53E4();
      sub_21A177CBC(v39, qword_27CD23C98);
      sub_21A2F5434();
      v40 = sub_21A2F53C4();
      v41 = sub_21A2F7DD4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134349056;
        *(v42 + 4) = v28;

        _os_log_impl(&dword_21A137000, v40, v41, "Unable to find the countdown timer for index: %{public}ld", v42, 0xCu);
        MEMORY[0x21CED7BA0](v42, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      swift_getKeyPath();
      v64 = v3;
      sub_21A2F5094();

      v30 = *(v3 + v29);
      if (v28 >= *(v30 + 16))
      {
        __break(1u);
      }

      else
      {
        v31 = type metadata accessor for CountdownTimer();
        v32 = v30 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)) + *(*(v31 - 8) + 72) * v28 + *(v31 + 20);
        v33 = v56;
        sub_21A2021B0(v32, v56, type metadata accessor for Duration);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v52;
          sub_21A1A361C(v33, v52);
          v36 = v59;
          v35 = v60;
          v37 = v57;
          (*(v59 + 16))(v57, v34, v60);
          sub_21A1427A8(v34, &qword_27CCFF388);
          v38 = *(v36 + 32);
        }

        else
        {
          v36 = v59;
          v38 = *(v59 + 32);
          v37 = v57;
          v43 = v33;
          v35 = v60;
          v38(v57, v43, v60);
        }

        v44 = v58;
        v38(v58, v37, v35);
        v45 = &v19[*(v26 + 20)];
        v46 = *(sub_21A176C98(&qword_27CD01068) + 48);
        v47 = v62;
        *v45 = v54;
        *(v45 + 1) = v47;
        v48 = v63;
        *(v45 + 1) = v55;
        *(v45 + 2) = v48;
        (*(v36 + 16))(&v45[v46], v44, v35);
        type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(0);
        swift_storeEnumTagMultiPayload();
        v49 = v61;
        v50 = v61[1];
        *v19 = *v61;
        *(v19 + 1) = v50;
        v19[32] = *(v49 + 32);
        (*(v27 + 56))(v19, 0, 1, v26);
        sub_21A2F5434();
        sub_21A1FB2F0(v19);
        (*(v36 + 8))(v44, v35);
      }
    }
  }
}

uint64_t sub_21A1FC304(__int128 *a1, double a2)
{
  v3 = v2;
  v6 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v47[1] = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A2F7894();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v47[0] = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v47 - v14;
  v16 = type metadata accessor for Recipe();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v47 - v23;
  v25 = a1[1];
  v58 = *a1;
  v59 = v25;
  v26 = a1[2];
  v51 = a1[1];
  v60 = v26;
  v27 = *(a1 + 1);
  v49 = *a1;
  v48 = v27;
  v50 = a1[2];
  v28 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
  sub_21A1FB2F0(v24);
  swift_getKeyPath();
  *&v52 = v3;
  sub_21A2022B8(&v58, v56);
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  *&v56[0] = v3;
  swift_getKeyPath();
  sub_21A2F50B4();

  sub_21A2B9E44(v56, &v58);

  *&v52 = v3;
  swift_getKeyPath();
  sub_21A2F50A4();

  swift_getKeyPath();
  *&v56[0] = v3;
  sub_21A2F5094();

  sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe, v15, &qword_27CCFF058);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_21A1427A8(v15, &qword_27CCFF058);
  }

  sub_21A202314(v15, v20, type metadata accessor for Recipe);
  swift_getKeyPath();
  *&v56[0] = v3;
  sub_21A2F5094();

  v30 = *(&v60 + 1);
  if ((*(&v60 + 1) & 0x8000000000000000) != 0 || (v31 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers, *(&v60 + 1) >= *(*(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers) + 16)))
  {
    if (qword_27CCFE7C8 != -1)
    {
      swift_once();
    }

    v37 = sub_21A2F53E4();
    sub_21A177CBC(v37, qword_27CD23C98);
    sub_21A2022B8(&v58, v56);
    v38 = sub_21A2F53C4();
    v39 = sub_21A2F7DD4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      *(v40 + 4) = v30;
      sub_21A192C5C(&v58);
      _os_log_impl(&dword_21A137000, v38, v39, "Unable to find the countdown timer for index: %{public}ld", v40, 0xCu);
      MEMORY[0x21CED7BA0](v40, -1, -1);
    }

    else
    {
      sub_21A192C5C(&v58);
    }

    return sub_21A202218(v20, type metadata accessor for Recipe);
  }

  swift_getKeyPath();
  *&v56[0] = v3;
  sub_21A2F5094();

  v32 = *(v3 + v31);
  if (v30 >= *(v32 + 16))
  {
    __break(1u);
  }

  else
  {
    v33 = *(type metadata accessor for CountdownTimer() - 8);
    v34 = (v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30);
    v35 = *v34;
    if (v34[1])
    {
      v36 = v34[1];
LABEL_16:
      *&v52 = v49;
      *(&v52 + 1) = v48;
      v54 = v50;
      v53 = v51;
      *v55 = v35;
      *&v55[8] = v36;
      *&v55[16] = a2;
      v55[24] = 0;
      sub_21A2022B8(&v58, v56);
      sub_21A1518C8();
      sub_21A2F5434();
      sub_21A2F75E4();
      v56[2] = v54;
      v57[0] = *v55;
      *(v57 + 9) = *&v55[9];
      v56[0] = v52;
      v56[1] = v53;
      sub_21A2023D0(v56);
      return sub_21A202218(v20, type metadata accessor for Recipe);
    }

    sub_21A2F7884();
    sub_21A2F4A54();
    sub_21A2F7934();
    sub_21A176C98(&qword_27CCFFF88);
    result = swift_allocObject();
    *(result + 16) = xmmword_21A2FEED0;
    v41 = *(&v59 + 1) + 1;
    if (!__OFADD__(*(&v59 + 1), 1))
    {
      v42 = result;
      v43 = MEMORY[0x277D83C10];
      *(result + 56) = MEMORY[0x277D83B88];
      *(result + 64) = v43;
      *(result + 32) = v41;
      v45 = *(v20 + 2);
      v44 = *(v20 + 3);
      *(result + 96) = MEMORY[0x277D837D0];
      *(result + 104) = sub_21A20237C();
      *(v42 + 72) = v45;
      *(v42 + 80) = v44;
      sub_21A2F5434();
      v35 = sub_21A2F7904();
      v36 = v46;

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1FCB14(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  swift_getKeyPath();
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v4 = v1;
  swift_getKeyPath();
  sub_21A2F50B4();

  sub_21A2BE6B8(v5, &v4);

  swift_getKeyPath();
  sub_21A2F50A4();
}

uint64_t sub_21A1FCC48(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecipeTimer();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 1);
  v29[0] = *a1;
  v29[1] = v13;
  v14 = *(a1 + 2);
  v22 = *(a1 + 1);
  v29[2] = v14;
  v15 = *a1;
  v16 = a1[1];
  v21 = *(a1 + 2);
  swift_getKeyPath();
  *&v27[0] = v2;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v18 = *(v2 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__timers);
  if (*(v18 + 16))
  {
    sub_21A2F5434();
    v19 = sub_21A25A410(v29);
    if (v20)
    {
      sub_21A2021B0(*(v18 + 56) + *(v5 + 72) * v19, v8, type metadata accessor for RecipeTimer);

      sub_21A202314(v8, v12, type metadata accessor for RecipeTimer);
      if (v12[*(v4 + 24)] == 2)
      {
        *&v23 = v15;
        *(&v23 + 1) = v16;
        v25 = v21;
        v24 = v22;
        v26[24] = 3;
        sub_21A2022B8(v29, v27);
        sub_21A1518C8();
        sub_21A2F75E4();
        v27[2] = v25;
        v28[0] = *v26;
        *(v28 + 9) = *&v26[9];
        v27[0] = v23;
        v27[1] = v24;
        sub_21A2023D0(v27);
      }

      return sub_21A202218(v12, type metadata accessor for RecipeTimer);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21A1FCF00(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecipeTimer();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 1);
  v29[0] = *a1;
  v29[1] = v13;
  v14 = *(a1 + 2);
  v22 = *(a1 + 1);
  v29[2] = v14;
  v15 = *a1;
  v16 = a1[1];
  v21 = *(a1 + 2);
  swift_getKeyPath();
  *&v27[0] = v2;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v18 = *(v2 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__timers);
  if (*(v18 + 16))
  {
    sub_21A2F5434();
    v19 = sub_21A25A410(v29);
    if (v20)
    {
      sub_21A2021B0(*(v18 + 56) + *(v5 + 72) * v19, v8, type metadata accessor for RecipeTimer);

      sub_21A202314(v8, v12, type metadata accessor for RecipeTimer);
      if (v12[*(v4 + 24)] == 1)
      {
        *&v23 = v15;
        *(&v23 + 1) = v16;
        v25 = v21;
        v24 = v22;
        v26[24] = 4;
        sub_21A2022B8(v29, v27);
        sub_21A1518C8();
        sub_21A2F75E4();
        v27[2] = v25;
        v28[0] = *v26;
        *(v28 + 9) = *&v26[9];
        v27[0] = v23;
        v27[1] = v24;
        sub_21A2023D0(v27);
      }

      return sub_21A202218(v12, type metadata accessor for RecipeTimer);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21A1FD1B8(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecipeTimer();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 1);
  v29[0] = *a1;
  v29[1] = v13;
  v14 = *(a1 + 2);
  v22 = *(a1 + 1);
  v29[2] = v14;
  v15 = *a1;
  v16 = a1[1];
  v21 = *(a1 + 2);
  swift_getKeyPath();
  *&v27[0] = v2;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v18 = *(v2 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__timers);
  if (*(v18 + 16))
  {
    sub_21A2F5434();
    v19 = sub_21A25A410(v29);
    if (v20)
    {
      sub_21A2021B0(*(v18 + 56) + *(v5 + 72) * v19, v8, type metadata accessor for RecipeTimer);

      sub_21A202314(v8, v12, type metadata accessor for RecipeTimer);
      if (v12[*(v4 + 24)])
      {
        *&v23 = v15;
        *(&v23 + 1) = v16;
        v25 = v21;
        v24 = v22;
        v26[24] = 5;
        sub_21A2022B8(v29, v27);
        sub_21A1518C8();
        sub_21A2F75E4();
        v27[2] = v25;
        v28[0] = *v26;
        *(v28 + 9) = *&v26[9];
        v27[0] = v23;
        v27[1] = v24;
        sub_21A2023D0(v27);
      }

      return sub_21A202218(v12, type metadata accessor for RecipeTimer);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21A1FD46C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v40 = a3;
  v7 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v36 - v9;
  v11 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v39 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v36 - v16;
  swift_getKeyPath();
  v41 = v3;
  sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver, v17, &qword_27CD01060);
  v18 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  v19 = *(v18 - 8);
  v37 = v18;
  v38 = v19;
  v20 = (*(v19 + 48))(v17, 1);
  result = sub_21A1427A8(v17, &qword_27CD01060);
  if (v20 == 1)
  {
    swift_getKeyPath();
    v41 = v4;
    sub_21A2F5094();

    sub_21A183960(v4 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe, v10, &qword_27CCFF058);
    v22 = type metadata accessor for Recipe();
    if ((*(*(v22 - 8) + 48))(v10, 1, v22))
    {
      return sub_21A1427A8(v10, &qword_27CCFF058);
    }

    else
    {
      v36[1] = v4;
      v23 = *&v10[*(v22 + 68)];
      sub_21A2F5434();
      sub_21A1427A8(v10, &qword_27CCFF058);
      v24 = *(v23 + 16);
      v36[2] = v23;
      v25 = v23 + 72;
      v26 = v24 + 1;
      while (--v26)
      {
        v27 = *(v25 - 24);
        v28 = *(v25 - 16);
        if (*(v25 - 40) != a1 || *(v25 - 32) != a2)
        {
          v25 += 48;
          if ((sub_21A2F8394() & 1) == 0)
          {
            continue;
          }
        }

        sub_21A2F5434();
        sub_21A2F5434();
        sub_21A2F5434();
        sub_21A2F5434();

        v30 = v37;
        v31 = *(v37 + 20);

        v32 = v39;
        v33 = &v39[v31];

        *v33 = v27;
        *(v33 + 1) = v28;
        type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(0);
        swift_storeEnumTagMultiPayload();
        v34 = v40;
        v35 = v40[1];
        *v32 = *v40;
        *(v32 + 16) = v35;
        *(v32 + 32) = *(v34 + 32);
        (*(v38 + 56))(v32, 0, 1, v30);
        return sub_21A1FB2F0(v32);
      }
    }
  }

  return result;
}

uint64_t sub_21A1FD86C()
{

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe, &qword_27CCFF058);

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver, &qword_27CD01060);

  v1 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

__n128 sub_21A1FD9FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A1FDA20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 65))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 64) & 0x3C | (*(a1 + 64) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A1FDA70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_21A1FDB18()
{
  result = qword_27CD01040;
  if (!qword_27CD01040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01040);
  }

  return result;
}

uint64_t sub_21A1FDBFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1FDC8C()
{
  v0 = sub_21A2F7614();
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x21CED60A0](v2);
  swift_allocObject();
  return sub_21A1FB710(v4);
}

uint64_t sub_21A1FDD30()
{
  sub_21A1D9274();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A1FDD6C@<X0>(uint64_t *a1@<X8>)
{
  sub_21A1FDBFC(&qword_27CD00720, type metadata accessor for InstructionSubStepViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A1FDDE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD01100);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for InstructionSubStepViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD01100);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1FDBFC(&qword_27CD01108, type metadata accessor for InstructionSubStepViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A202314(v5, v8, type metadata accessor for InstructionSubStepViewModelSource);
  }

  return result;
}

uint64_t sub_21A1FDF40()
{
  v86 = sub_21A176C98(&qword_27CD01088);
  MEMORY[0x28223BE20](v86, v1);
  v88 = v75 - v2;
  v3 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v85 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v83 = (v75 - v8);
  MEMORY[0x28223BE20](v9, v10);
  v90 = v75 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v75 - v14;
  v16 = type metadata accessor for InstructionSubStepViewModelSource(0);
  MEMORY[0x28223BE20](v16, v17);
  v84 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v89 = v75 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = v75 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = v75 - v28;
  v30 = type metadata accessor for Recipe();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v82 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34, v35);
  v37 = (v75 - v36);
  sub_21A2021B0(v0, v29, type metadata accessor for InstructionSubStepViewModelSource);
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A202218(v29, type metadata accessor for InstructionSubStepViewModelSource);
  v87 = v31;
  v38 = *(v31 + 48);
  if (v38(v15, 1, v30) == 1)
  {
    sub_21A1427A8(v15, &qword_27CCFF058);
    return sub_21A1FB888();
  }

  sub_21A202314(v15, v37, type metadata accessor for Recipe);
  sub_21A2021B0(v0, v25, type metadata accessor for InstructionSubStepViewModelSource);
  v78 = v16;
  sub_21A176C98(&qword_27CD01098);
  sub_21A2F7594();
  sub_21A202218(v25, type metadata accessor for InstructionSubStepViewModelSource);
  if (v94 == 1)
  {
    sub_21A202218(v37, type metadata accessor for Recipe);
    return sub_21A1FB888();
  }

  v80 = v92;
  v81 = v91;
  v79 = v93;
  v76 = v0;
  v40 = *v0;
  swift_getKeyPath();
  v41 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel___observationRegistrar;
  v91 = v40;
  v42 = sub_21A1FDBFC(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  v75[2] = v41;
  v75[1] = v42;
  sub_21A2F5094();

  v43 = OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__recipe;
  v77 = v37;
  v44 = v90;
  sub_21A2021B0(v37, v90, type metadata accessor for Recipe);
  v87 = *(v87 + 56);
  (v87)(v44, 0, 1, v30);
  v45 = *(v86 + 48);
  v46 = v40 + v43;
  v47 = v44;
  v48 = v88;
  sub_21A183960(v46, v88, &qword_27CCFF058);
  sub_21A183960(v47, v48 + v45, &qword_27CCFF058);
  if (v38(v48, 1, v30) == 1)
  {
    sub_21A1427A8(v47, &qword_27CCFF058);
    v49 = v38((v48 + v45), 1, v30);
    v50 = v76;
    if (v49 == 1)
    {
      sub_21A1427A8(v48, &qword_27CCFF058);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v51 = v83;
  sub_21A183960(v48, v83, &qword_27CCFF058);
  if (v38((v48 + v45), 1, v30) == 1)
  {
    sub_21A1427A8(v90, &qword_27CCFF058);
    sub_21A202218(v51, type metadata accessor for Recipe);
    v50 = v76;
LABEL_12:
    sub_21A1427A8(v48, &qword_27CD01088);
LABEL_13:
    v52 = v85;
    sub_21A2021B0(v77, v85, type metadata accessor for Recipe);
    (v87)(v52, 0, 1, v30);
    sub_21A1FA7B0(v52);
    goto LABEL_14;
  }

  v61 = v82;
  sub_21A202314(v48 + v45, v82, type metadata accessor for Recipe);
  v62 = _s10CookingKit6RecipeV2eeoiySbAC_ACtFZ_0(v51, v61);
  sub_21A202218(v61, type metadata accessor for Recipe);
  sub_21A1427A8(v90, &qword_27CCFF058);
  sub_21A202218(v51, type metadata accessor for Recipe);
  sub_21A1427A8(v48, &qword_27CCFF058);
  v50 = v76;
  if (!v62)
  {
    goto LABEL_13;
  }

LABEL_14:
  swift_getKeyPath();
  v91 = v40;
  sub_21A2F5094();

  v53 = (v40 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  if ((*(v40 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24) & 1) != 0 || *v53 != v81 || v53[1] != v80 || v53[2] != v79)
  {
    v91 = v81;
    v92 = v80;
    v93 = v79;
    v94 = 0;
    sub_21A1FAE00(&v91);
  }

  swift_getKeyPath();
  v91 = v40;
  sub_21A2F5094();

  v54 = *(v40 + 24);
  v55 = v89;
  sub_21A2021B0(v50, v89, type metadata accessor for InstructionSubStepViewModelSource);
  sub_21A176C98(&qword_27CCFFA40);
  sub_21A2F7594();
  sub_21A202218(v55, type metadata accessor for InstructionSubStepViewModelSource);
  v56 = v77;
  if (v54 != v91)
  {
    v57 = v84;
    sub_21A2021B0(v50, v84, type metadata accessor for InstructionSubStepViewModelSource);
    sub_21A2F7594();
    sub_21A202218(v57, type metadata accessor for InstructionSubStepViewModelSource);
    v58 = v91;
    if (v91 == *(v40 + 24))
    {
      *(v40 + 24) = v91;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v60);
      v75[-2] = v40;
      LOBYTE(v75[-1]) = v58;
      v91 = v40;
      sub_21A2F5084();
    }
  }

  v91 = v81;
  v92 = v80;
  v93 = v79;
  v63 = sub_21A1FEB20(&v91, v56);
  v65 = v64;
  swift_getKeyPath();
  v91 = v40;
  sub_21A2F5094();

  v66 = sub_21A2F5434();
  v67 = sub_21A1A13A0(v66, v63);

  if ((v67 & 1) == 0)
  {
    v68 = sub_21A2F5434();
    sub_21A1FA3B8(v68);
  }

  v69 = sub_21A25F674(MEMORY[0x277D84F90]);
  v70 = sub_21A1FFE08(v69, v63, v50);

  swift_getKeyPath();
  v91 = v40;
  sub_21A2F5094();

  v71 = sub_21A2F5434();
  v72 = sub_21A191438(v71, v70);

  if (v72)
  {
  }

  else
  {
    sub_21A1FB5B0(v70, &OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__timers, sub_21A191438);
  }

  swift_getKeyPath();
  v91 = v40;
  sub_21A2F5094();

  v73 = sub_21A2F5434();
  v74 = sub_21A1A172C(v73, v65);

  if (v74)
  {
    sub_21A202218(v56, type metadata accessor for Recipe);
  }

  else
  {
    sub_21A1FB5B0(v65, &OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__countdownTimers, sub_21A1A172C);
    return sub_21A202218(v56, type metadata accessor for Recipe);
  }
}

uint64_t sub_21A1FEB20(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Recipe();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v181 = (&v155 - v12);
  v13 = type metadata accessor for RecipeTimer();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_21A2F4524();
  v192 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v18);
  v164 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CountdownTimer();
  v163 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v173 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v177 = &v155 - v25;
  v172 = type metadata accessor for SubStepTextElement.Kind(0);
  MEMORY[0x28223BE20](v172, v26);
  v171 = (&v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = type metadata accessor for SubStepTextElement(0);
  v191 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v28);
  v187 = (&v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = a2;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[2];
  v193 = v30;
  v194 = v31;
  v195 = v32;
  sub_21A273B34(&v193, &v198);
  v33 = v199;
  if (!v199)
  {
    return MEMORY[0x277D84F90];
  }

  v156 = v17;
  v157 = v14;
  v158 = v13;
  v34 = v198;
  v169 = v30;
  v193 = v30;
  v194 = v31;
  v168 = v32;
  v195 = v32;
  v160 = type metadata accessor for InstructionSubStepViewModelSource(0);
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD010A8);
  v161 = v3;
  v35 = v34;
  sub_21A2F7594();
  v36 = sub_21A200394(&v193, v197);

  sub_21A2025FC(v34, v33);
  if (!*(v36 + 16))
  {

    v45 = MEMORY[0x277D84F90];
    v143 = 15;
    v179 = MEMORY[0x277D84F90];
LABEL_79:
    v144 = sub_21A240970(v143, v35, v33);
    v146 = v145;
    v148 = v147;
    v150 = v149;

    if ((v144 ^ v146) >= 0x4000)
    {
      v40 = MEMORY[0x21CED6410](v144, v146, v148, v150);
      v49 = v151;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_92:
        v45 = sub_21A1B7B8C(0, *(v45 + 16) + 1, 1, v45);
      }

      v153 = *(v45 + 16);
      v152 = *(v45 + 24);
      if (v153 >= v152 >> 1)
      {
        v45 = sub_21A1B7B8C((v152 > 1), v153 + 1, 1, v45);
      }

      *(v45 + 16) = v153 + 1;
      v154 = v45 + 72 * v153;
      *(v154 + 32) = v40;
      *(v154 + 40) = v49;
      *(v154 + 96) = 0;
    }

    else
    {
    }

    return v45;
  }

  v38 = *(v36 + 16);
  v166 = v31;
  v178 = 0;
  v39 = (*(v191 + 80) + 32) & ~*(v191 + 80);
  v155 = v36;
  v40 = v36 + v39;
  v190 = *(v191 + 72);
  if ((v33 & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v41 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v42 = (v41 << 16) | 0xB;
  v189 = v41;
  v43 = (v41 << 16) | 7;
  v174 = v43;
  if ((v34 & 0x800000000000000) != 0)
  {
    v42 = v43;
  }

  v185 = v42;
  v180 = (v34 & 0x800000000000000uLL) >> 59;
  v159 = (v192 + 1);
  v183 = 15;
  *&v37 = 136446722;
  v182 = v37;
  *&v37 = 136446978;
  v167 = v37;
  v179 = MEMORY[0x277D84F90];
  v184 = MEMORY[0x277D84F90];
  v191 = v34;
  v192 = v9;
  v44 = v187;
  v45 = v38;
  while (1)
  {
    result = sub_21A2021B0(v40, v44, type metadata accessor for SubStepTextElement);
    v47 = *v44;
    v48 = v44[1];
    if ((v33 & 0x1000000000000000) == 0)
    {
      break;
    }

    v51 = sub_21A2F7A14();
    if (v52)
    {
      goto LABEL_26;
    }

    v49 = v51;
    v50 = v180;
LABEL_18:
    v53 = v49;
    if ((v49 & 0xC) == 4 << v50)
    {
      v53 = sub_21A25EC14(v49, v35, v33);
      v186 = v45;
      if ((v33 & 0x1000000000000000) != 0)
      {
LABEL_36:
        v68 = sub_21A2F7A14();
        if (v69)
        {
          goto LABEL_37;
        }

        v45 = v68;
        goto LABEL_42;
      }
    }

    else
    {
      v186 = v45;
      if ((v33 & 0x1000000000000000) != 0)
      {
        goto LABEL_36;
      }
    }

    v54 = v53 >> 16;
    v55 = (v53 >> 16) + v48;
    if (__OFADD__(v53 >> 16, v48))
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      if (v54 >= v189 && v55 < v189)
      {
LABEL_37:
        v70 = qword_27CCFE7D0;
        sub_21A2F5434();
        if (v70 != -1)
        {
          swift_once();
        }

        v71 = sub_21A2F53E4();
        sub_21A177CBC(v71, qword_27CD23CB0);
        v72 = v181;
        sub_21A2021B0(v188, v181, type metadata accessor for Recipe);
        sub_21A2F5434();
        v73 = sub_21A2F53C4();
        v74 = sub_21A2F7DE4();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v193 = v176;
          *v75 = v167;
          v76 = *v72;
          v77 = v72[1];
          sub_21A2F5434();
          sub_21A202218(v72, type metadata accessor for Recipe);
          v78 = v76;
          v44 = v187;
          v79 = sub_21A25B5DC(v78, v77, &v193);
          v9 = v192;

          *(v75 + 4) = v79;
          *(v75 + 12) = 2048;
          *(v75 + 14) = v47;
          *(v75 + 22) = 2048;
          *(v75 + 24) = v48;
          *(v75 + 32) = 2082;
          v35 = v191;
          *(v75 + 34) = sub_21A25B5DC(v191, v33, &v193);
          _os_log_impl(&dword_21A137000, v73, v74, "Text range length out of bounds for recipe: %{public}s, textRange.start: %ld, textRange.length: %ld, step: %{public}s", v75, 0x2Au);
          v80 = v176;
          swift_arrayDestroy();
          MEMORY[0x21CED7BA0](v80, -1, -1);
          MEMORY[0x21CED7BA0](v75, -1, -1);

          sub_21A202218(v44, type metadata accessor for SubStepTextElement);
        }

        else
        {

          sub_21A202218(v72, type metadata accessor for Recipe);
          sub_21A202218(v44, type metadata accessor for SubStepTextElement);
          v35 = v191;
        }

        goto LABEL_75;
      }
    }

    else if (v189 >= v54 && v189 < v55)
    {
      goto LABEL_37;
    }

    if (v55 < 0)
    {
      goto LABEL_89;
    }

    if (v189 < v55)
    {
      goto LABEL_90;
    }

    v45 = (v55 << 16) | 4;
LABEL_42:
    if (v49 >> 14 < v183 >> 14)
    {
      goto LABEL_87;
    }

    sub_21A2F5434();
    v81 = sub_21A2F7A94();
    if ((v81 ^ v82) >= 0x4000)
    {
      v83 = MEMORY[0x21CED6410](v81);
      v85 = v84;

      v86 = v184;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_21A1B7B8C(0, *(v86 + 2) + 1, 1, v86);
      }

      v87 = v86;
      v88 = *(v86 + 2);
      v184 = v87;
      v89 = *(v87 + 3);
      if (v88 >= v89 >> 1)
      {
        v184 = sub_21A1B7B8C((v89 > 1), v88 + 1, 1, v184);
      }

      v90 = v175 & 3;
      v91 = v184;
      *(v184 + 2) = v88 + 1;
      v92 = &v91[72 * v88];
      *(v92 + 4) = v83;
      *(v92 + 5) = v85;
      v175 = v90;
      v92[96] = v90;
      v9 = v192;
    }

    else
    {
    }

    if (v49 >> 14 > v45 >> 14)
    {
      goto LABEL_88;
    }

    v35 = v191;
    v93 = sub_21A2F7A94();
    v97 = v96;
    if ((v93 ^ v94) >= 0x4000)
    {
      v98 = v93;
      v99 = v94;
      v100 = v95;
      v101 = v171;
      sub_21A2021B0(v187 + *(v170 + 20), v171, type metadata accessor for SubStepTextElement.Kind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v102 = *v101;
        v103 = v101[1];
        v183 = MEMORY[0x21CED6410](v98, v99, v100, v97);
        v105 = v104;

        v106 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_21A1B7B8C(0, *(v184 + 2) + 1, 1, v184);
        }

        v107 = v162;
        v109 = *(v184 + 2);
        v108 = *(v184 + 3);
        v110 = v103;
        if (v109 >= v108 >> 1)
        {
          v184 = sub_21A1B7B8C((v108 > 1), v109 + 1, 1, v184);
        }

        v111 = v107 & 3 | 0x40;
        v44 = v187;
        sub_21A202218(v187, type metadata accessor for SubStepTextElement);
        v112 = v184;
        *(v184 + 2) = v109 + 1;
        v113 = &v112[72 * v109];
        *(v113 + 4) = v183;
        *(v113 + 5) = v105;
        *(v113 + 6) = v106;
        *(v113 + 7) = v110;
        v113[96] = v111;
        v162 = v111;
        v183 = v45;
        v35 = v191;
        v9 = v192;
        goto LABEL_75;
      }

      sub_21A202314(v101, v177, type metadata accessor for CountdownTimer);
      v193 = v98;
      v194 = v99;
      v195 = v100;
      v196 = v97;
      v114 = v164;
      sub_21A2F44E4();
      sub_21A202660();
      v115 = sub_21A2F7EC4();
      (*v159)(v114, v165);

      v193 = v115;
      sub_21A176C98(&qword_27CD010C8);
      sub_21A1549F0();
      v116 = sub_21A2F7834();
      v118 = v117;

      v120 = *v188;
      v119 = v188[1];
      v193 = v116;
      v194 = v118;
      sub_21A2F5434();
      v121 = sub_21A2F7A84();
      v123 = v122;
      sub_21A176C98(&qword_27CD010A0);
      sub_21A2F7594();
      v124 = v193;
      v198 = v120;
      v199 = v119;
      v200 = v169;
      v201 = v166;
      v202 = v168;
      v203 = v178;
      v204 = 1;
      if (*(v193 + 16))
      {
        sub_21A2F5434();
        v125 = sub_21A25A2A0(&v198);
        v126 = v184;
        if (v127)
        {
          v128 = v156;
          sub_21A2021B0(*(v124 + 56) + *(v157 + 72) * v125, v156, type metadata accessor for RecipeTimer);

          v129 = *(v128 + *(v158 + 24));
          sub_21A202218(v128, type metadata accessor for RecipeTimer);
          v130 = v129 & 3 | 0x80;
        }

        else
        {

          v130 = 0x80;
        }
      }

      else
      {

        v130 = 0x80;
        v126 = v184;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = sub_21A1B7B8C(0, *(v126 + 2) + 1, 1, v126);
      }

      v131 = v126;
      v132 = *(v126 + 2);
      v184 = v131;
      v133 = *(v131 + 3);
      if (v132 >= v133 >> 1)
      {
        v184 = sub_21A1B7B8C((v133 > 1), v132 + 1, 1, v184);
      }

      v134 = v184;
      *(v184 + 2) = v132 + 1;
      v135 = &v134[72 * v132];
      *(v135 + 4) = v121;
      *(v135 + 5) = v123;
      *(v135 + 6) = v120;
      *(v135 + 7) = v119;
      v136 = v166;
      *(v135 + 8) = v169;
      *(v135 + 9) = v136;
      v137 = v178;
      *(v135 + 10) = v168;
      *(v135 + 11) = v137;
      v135[96] = v130;
      sub_21A2021B0(v177, v173, type metadata accessor for CountdownTimer);
      v138 = v179;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_21A1B7B64(0, v138[2] + 1, 1, v138);
      }

      v35 = v191;
      v9 = v192;
      v44 = v187;
      v179 = v138;
      v140 = v138[2];
      v139 = v138[3];
      v49 = v140 + 1;
      if (v140 >= v139 >> 1)
      {
        v179 = sub_21A1B7B64(v139 > 1, v140 + 1, 1, v179);
      }

      sub_21A202218(v177, type metadata accessor for CountdownTimer);
      sub_21A202218(v44, type metadata accessor for SubStepTextElement);
      v141 = v179;
      v179[2] = v49;
      sub_21A202314(v173, v141 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v140, type metadata accessor for CountdownTimer);
      if (__OFADD__(v178++, 1))
      {
        goto LABEL_91;
      }
    }

    else
    {
      v44 = v187;
      sub_21A202218(v187, type metadata accessor for SubStepTextElement);
    }

    v183 = v45;
LABEL_75:
    v45 = v186;
LABEL_11:
    v40 += v190;
    if (!--v45)
    {

      v45 = v184;
      v143 = v183;
      goto LABEL_79;
    }
  }

  if ((v47 & 0x8000000000000000) == 0)
  {
    if (v189 < v47)
    {
      goto LABEL_26;
    }

    v49 = (v47 << 16) | 4;
    v50 = 1;
    goto LABEL_18;
  }

  if (!v189)
  {
LABEL_26:
    v56 = qword_27CCFE7D0;
    sub_21A2F5434();
    if (v56 != -1)
    {
      swift_once();
    }

    v57 = sub_21A2F53E4();
    sub_21A177CBC(v57, qword_27CD23CB0);
    sub_21A2021B0(v188, v9, type metadata accessor for Recipe);
    sub_21A2F5434();
    v58 = sub_21A2F53C4();
    v59 = sub_21A2F7DE4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v45;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v193 = v62;
      *v61 = v182;
      v63 = *v9;
      v64 = v192[1];
      sub_21A2F5434();
      sub_21A202218(v192, type metadata accessor for Recipe);
      v65 = sub_21A25B5DC(v63, v64, &v193);
      v9 = v192;

      *(v61 + 4) = v65;
      v35 = v191;
      *(v61 + 12) = 2048;
      *(v61 + 14) = v47;
      *(v61 + 22) = 2082;
      *(v61 + 24) = sub_21A25B5DC(v35, v33, &v193);
      _os_log_impl(&dword_21A137000, v58, v59, "Text range start out of bounds for recipe: %{public}s, textRange.start: %ld, step: %{public}s", v61, 0x20u);
      swift_arrayDestroy();
      v66 = v62;
      v44 = v187;
      MEMORY[0x21CED7BA0](v66, -1, -1);
      v67 = v61;
      v45 = v60;
      MEMORY[0x21CED7BA0](v67, -1, -1);
    }

    else
    {

      sub_21A202218(v9, type metadata accessor for Recipe);
    }

    sub_21A202218(v44, type metadata accessor for SubStepTextElement);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1FFE08(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v66 = type metadata accessor for InstructionSubStepViewModelSource(0);
  MEMORY[0x28223BE20](v66, v6);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeTimer() - 8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  MEMORY[0x28223BE20](v14, v15);
  v19 = *(a2 + 16);
  if (!v19)
  {
    return a1;
  }

  v57 = v18;
  v58 = v17;
  v20 = 0;
  v21 = a2 + 32;
  v61 = v3;
  v60 = v11;
  v59 = &v56 - v16;
  v64 = v19;
  v56 = v21;
  while (2)
  {
    v62 = a1;
    v22 = (v21 + 72 * v20);
    for (i = v20; ; ++i)
    {
      if (i >= v19)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v25 = v22[3];
      v72 = v22[2];
      v73 = v25;
      v74 = *(v22 + 64);
      v26 = *v22;
      v71 = v22[1];
      v70 = v26;
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_27;
      }

      if (v74 >> 6 >= 2u)
      {
        break;
      }

LABEL_5:
      v22 = (v22 + 72);
      if (v24 == v19)
      {
        return v62;
      }
    }

    v68 = i + 1;
    v27 = v73;
    v28 = *(&v72 + 1);
    v83 = v72;
    v29 = v71;
    *(&v76 + 1) = *(&v72 + 1);
    v77 = v73;
    v30 = v65;
    sub_21A2021B0(v67, v65, type metadata accessor for InstructionSubStepViewModelSource);
    sub_21A1A368C(&v70, &v69);
    sub_21A2F5434();
    sub_21A176C98(&qword_27CD010A0);
    sub_21A2F7594();
    v31 = v30;
    v32 = v83;
    sub_21A202218(v31, type metadata accessor for InstructionSubStepViewModelSource);
    v33 = v69;
    v63 = v29;
    v78 = v29;
    v79 = v32;
    v80 = v28;
    v81 = v27;
    v82 = 1;
    if (!v69[2])
    {
LABEL_4:

      sub_21A1A36E8(&v70);
      v19 = v64;
      v24 = v68;
      goto LABEL_5;
    }

    sub_21A2F5434();
    v34 = sub_21A25A2A0(&v78);
    if ((v35 & 1) == 0)
    {

      goto LABEL_4;
    }

    *(&v75 + 1) = *(&v29 + 1);
    *&v76 = v32;
    *&v75 = v63;
    v36 = *(v58 + 72);
    v37 = v57;
    sub_21A2021B0(v33[7] + v36 * v34, v57, type metadata accessor for RecipeTimer);

    v38 = v37;
    v39 = v59;
    sub_21A202314(v38, v59, type metadata accessor for RecipeTimer);
    sub_21A2021B0(v39, v60, type metadata accessor for RecipeTimer);
    v40 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v40;
    v43 = sub_21A25A410(&v75);
    v44 = v40[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_28;
    }

    v47 = v42;
    if (v40[3] < v46)
    {
      sub_21A26ECB0(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_21A25A410(&v75);
      if ((v47 & 1) == (v49 & 1))
      {
        v43 = v48;
        goto LABEL_18;
      }

LABEL_30:
      result = sub_21A2F83D4();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21A2B8340();
    }

LABEL_18:
    a1 = v69;
    if ((v47 & 1) == 0)
    {
      v69[(v43 >> 6) + 8] |= 1 << v43;
      v50 = (a1[6] + 48 * v43);
      v51 = v76;
      *v50 = v75;
      v50[1] = v51;
      v50[2] = v77;
      sub_21A202314(v60, a1[7] + v43 * v36, type metadata accessor for RecipeTimer);
      v52 = a1[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (!v53)
      {
        a1[2] = v54;
        goto LABEL_22;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_21A202558(v60, v69[7] + v43 * v36);

LABEL_22:
    v19 = v64;
    v21 = v56;
    v20 = v68;
    sub_21A202218(v59, type metadata accessor for RecipeTimer);
    sub_21A1A36E8(&v70);
    if (v20 != v19)
    {
      continue;
    }

    return a1;
  }
}

uint64_t sub_21A200394(uint64_t *a1, uint64_t a2)
{
  v82 = a2;
  v4 = sub_21A176C98(&qword_27CD010D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v79 = &v76 - v6;
  v7 = sub_21A176C98(&qword_27CCFF3A8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v76 - v9;
  v11 = type metadata accessor for CountdownTimer();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v90 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SubStepTextElement(0);
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v76 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v78 = &v76 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v89 = &v76 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v94 = (&v76 - v26);
  v27 = type metadata accessor for InTextCountdownTimer();
  MEMORY[0x28223BE20](v27, v28);
  v32 = (&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *a1;
  v80 = a1[1];
  v81 = v33;
  v77 = a1[2];
  v34 = *(v2 + 16);
  v83 = *(v2 + 32);
  v35 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v36 = *(v34 + 16);
  if (v36)
  {
    v93 = v11;
    v37 = *(v29 + 20);
    v38 = v34 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v39 = *(v30 + 72);
    v40 = (v12 + 48);
    v87 = v37;
    v88 = v10;
    v85 = v39;
    v86 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = (v12 + 48);
    do
    {
      sub_21A2021B0(v38, v32, type metadata accessor for InTextCountdownTimer);
      sub_21A183960(v32 + v37, v10, &qword_27CCFF3A8);
      if ((*v40)(v10, 1, v93) == 1)
      {
        sub_21A202218(v32, type metadata accessor for InTextCountdownTimer);
        sub_21A1427A8(v10, &qword_27CCFF3A8);
      }

      else
      {
        v41 = v90;
        sub_21A202314(v10, v90, type metadata accessor for CountdownTimer);
        v43 = *v32;
        v42 = v32[1];
        sub_21A202218(v32, type metadata accessor for InTextCountdownTimer);
        v44 = v89;
        sub_21A202314(v41, &v89[*(v92 + 20)], type metadata accessor for CountdownTimer);
        type metadata accessor for SubStepTextElement.Kind(0);
        v45 = v94;
        swift_storeEnumTagMultiPayload();
        *v44 = v43;
        v44[1] = v42;
        sub_21A202314(v44, v45, type metadata accessor for SubStepTextElement);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21A1B7B3C(0, v35[2] + 1, 1, v35);
        }

        v47 = v35[2];
        v46 = v35[3];
        v10 = v88;
        v39 = v85;
        v32 = v86;
        v40 = v84;
        if (v47 >= v46 >> 1)
        {
          v35 = sub_21A1B7B3C(v46 > 1, v47 + 1, 1, v35);
        }

        v35[2] = v47 + 1;
        sub_21A202314(v94, v35 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v47, type metadata accessor for SubStepTextElement);
        v37 = v87;
      }

      v38 += v39;
      --v36;
    }

    while (v36);
  }

  result = sub_21A2C6D7C(v35);
  v49 = v83;
  v50 = *(v83 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = (v83 + 56);
    v94 = MEMORY[0x277D84F90];
    v53 = v82;
    while (1)
    {
      if (v51 >= *(v49 + 16))
      {
        __break(1u);
        return result;
      }

      v54 = *(v52 - 2);
      if (v54)
      {
        v55 = *(v52 - 3);
        v56 = *(v52 - 1);
        v57 = *v52;
        v58 = *(v53 + 16);
        sub_21A2F5434();
        if (v58)
        {
          sub_21A2F5434();
          v59 = sub_21A25A4C4(v55, v54);
          if (v60)
          {
            v61 = (*(v53 + 56) + 24 * v59);
            v62 = *v61;
            v63 = v61[1];
            v64 = v61[2];

            if (v62 == v81 && v63 == v80)
            {
              v65 = v64 == v77;
              v53 = v82;
              if (v65)
              {
                v66 = v76;
                v67 = &v76[*(v92 + 20)];
                *v67 = v55;
                v67[1] = v54;
                type metadata accessor for SubStepTextElement.Kind(0);
                swift_storeEnumTagMultiPayload();
                *v66 = v56;
                v66[1] = v57;
                sub_21A202314(v66, v78, type metadata accessor for SubStepTextElement);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v94 = sub_21A1B7B3C(0, v94[2] + 1, 1, v94);
                }

                v69 = v94[2];
                v68 = v94[3];
                v49 = v83;
                if (v69 >= v68 >> 1)
                {
                  v94 = sub_21A1B7B3C(v68 > 1, v69 + 1, 1, v94);
                }

                v70 = v94;
                v94[2] = v69 + 1;
                result = sub_21A202314(v78, v70 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v69, type metadata accessor for SubStepTextElement);
              }

              else
              {

                v49 = v83;
              }
            }

            else
            {

              v53 = v82;
              v49 = v83;
            }

            goto LABEL_15;
          }
        }
      }

LABEL_15:
      ++v51;
      v52 += 4;
      if (v50 == v51)
      {
        goto LABEL_32;
      }
    }
  }

  v94 = MEMORY[0x277D84F90];
LABEL_32:
  sub_21A2C6D7C(v94);
  v71 = v92;
  v72 = sub_21A2F7B34();

  v73 = v79;
  (*(v91 + 56))(v79, 1, 1, v71);
  sub_21A1F994C(v72, v73);
  v75 = v74;
  sub_21A1427A8(v73, &qword_27CD010D0);
  return v75;
}

uint64_t sub_21A200B68(NSRange *a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD010D0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v44 - v6;
  v8 = type metadata accessor for SubStepTextElement(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v47 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v44 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v44 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = (v44 - v22);
  v25 = v24;
  sub_21A183960(a2, v7, &qword_27CD010D0);
  if ((*(v9 + 48))(v7, 1, v25) == 1)
  {
    sub_21A1427A8(v7, &qword_27CD010D0);
    v26 = a2;
LABEL_9:
    sub_21A1427A8(v26, &qword_27CD010D0);
    sub_21A2021B0(a1, a2, type metadata accessor for SubStepTextElement);
    v42 = 1;
    (*(v9 + 56))(a2, 0, 1, v25);
    return v42;
  }

  sub_21A202314(v7, v23, type metadata accessor for SubStepTextElement);
  if (!NSIntersectionRange(*a1, *v23).length)
  {
    sub_21A202218(v23, type metadata accessor for SubStepTextElement);
    v26 = a2;
    goto LABEL_9;
  }

  if (qword_27CCFE7C8 != -1)
  {
    swift_once();
  }

  v27 = sub_21A2F53E4();
  sub_21A177CBC(v27, qword_27CD23C98);
  sub_21A2021B0(v23, v19, type metadata accessor for SubStepTextElement);
  sub_21A2021B0(a1, v15, type metadata accessor for SubStepTextElement);
  v28 = sub_21A2F53C4();
  v29 = sub_21A2F7DD4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v30 = 136446466;
    v31 = v47;
    sub_21A2021B0(v19, v47, type metadata accessor for SubStepTextElement);
    v32 = sub_21A2F7944();
    v45 = v29;
    v33 = v32;
    v44[1] = v25;
    v35 = v34;
    sub_21A202218(v19, type metadata accessor for SubStepTextElement);
    v36 = sub_21A25B5DC(v33, v35, &v48);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2082;
    sub_21A2021B0(v15, v31, type metadata accessor for SubStepTextElement);
    v37 = sub_21A2F7944();
    v39 = v38;
    sub_21A202218(v15, type metadata accessor for SubStepTextElement);
    v40 = sub_21A25B5DC(v37, v39, &v48);

    *(v30 + 14) = v40;
    _os_log_impl(&dword_21A137000, v28, v45, "Found overlapping text elements: %{public}s and %{public}s", v30, 0x16u);
    v41 = v46;
    swift_arrayDestroy();
    MEMORY[0x21CED7BA0](v41, -1, -1);
    MEMORY[0x21CED7BA0](v30, -1, -1);
  }

  else
  {

    sub_21A202218(v15, type metadata accessor for SubStepTextElement);
    sub_21A202218(v19, type metadata accessor for SubStepTextElement);
  }

  sub_21A202218(v23, type metadata accessor for SubStepTextElement);
  return 0;
}

uint64_t sub_21A20106C(uint64_t result, uint64_t a2)
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_21A2F8434();
    sub_21A2F5434();
    sub_21A2F79A4();
    v16 = sub_21A2F8474();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_21A2F8394() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
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

uint64_t sub_21A201224(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v33 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v42 = a2 + 56;
  v34 = v6;
  v35 = result;
  v38 = a2;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v37 = (v5 - 1) & v5;
LABEL_13:
      v36 = v2;
      v10 = (*(result + 48) + 48 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v15 = v10[4];
      v16 = v10[5];
      v17 = a2;
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      v41 = v13;
      MEMORY[0x21CED6EE0](v13);
      v40 = v14;
      MEMORY[0x21CED6EE0](v14);
      v39 = v15;
      MEMORY[0x21CED6EE0](v15);
      v18 = v16;
      MEMORY[0x21CED6EE0](v16);
      v19 = sub_21A2F8474();
      v20 = -1 << *(v17 + 32);
      v21 = v19 & ~v20;
      if (((*(v42 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(v38 + 48);
      while (1)
      {
        v24 = (v23 + 48 * v21);
        v26 = v24[2];
        v25 = v24[3];
        v28 = v24[4];
        v27 = v24[5];
        v29 = *v24 == v12 && v24[1] == v11;
        if (v29 || (sub_21A2F8394() & 1) != 0)
        {
          v30 = v26 == v41 && v25 == v40;
          v31 = v30 && v28 == v39;
          if (v31 && v27 == v18)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v22;
        if (((*(v42 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v6 = v34;
      result = v35;
      v5 = v37;
      a2 = v38;
      v2 = v36;
      if (!v37)
      {
        goto LABEL_8;
      }
    }

LABEL_35:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v33 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A201488(uint64_t result, uint64_t a2)
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
  v27 = result;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v13 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      sub_21A2F8434();
      MEMORY[0x21CED6EE0](v14);
      MEMORY[0x21CED6EE0](v15);
      MEMORY[0x21CED6EE0](v16);
      v17 = sub_21A2F8474();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = (*(a2 + 48) + 24 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v22 == v14 && v23 == v15;
        if (v25 && v24 == v16)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

      result = v27;
      v7 = v28;
    }

    while (v28);
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
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A201648(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x21CED6F00](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x21CED6F00](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x21CED6F00](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x21CED6F00](*&v9);
}

BOOL sub_21A2016CC(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v25 = a1[2];
  v26 = v2;
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v30 = a2[2];
  v31 = v5;
  v7 = a2[1];
  v28 = *a2;
  v29 = v7;
  v8 = a1[3];
  v33[2] = v25;
  v33[3] = v8;
  v33[0] = v23;
  v33[1] = v3;
  v35 = v28;
  v38 = a2[3];
  v37 = v30;
  v27 = *(a1 + 64);
  v32 = *(a2 + 64);
  v34 = *(a1 + 64);
  v39 = *(a2 + 64);
  v36 = v6;
  v9 = v27;
  v10 = v27 >> 6;
  if (v10)
  {
    if (v10 == 1)
    {
      if (v32 & 0xC0) == 0x40 && (v23 == v28 || (sub_21A2F8394()))
      {
        if (v24 != v29)
        {
          goto LABEL_18;
        }

LABEL_10:
        sub_21A1A368C(&v28, v22);
        sub_21A1A368C(&v23, v22);
        sub_21A1427A8(v33, &qword_27CCFF3A0);
        return 1;
      }
    }

    else
    {
      v12 = v32;
      if ((v32 & 0xC0) == 0x80)
      {
        v13 = v25;
        v14 = v26;
        v15 = v30;
        v16 = v31;
        if (v23 == v28 || (v17 = sub_21A2F8394(), v16 = v31, v15 = v30, v14 = v26, v13 = v25, (v17 & 1) != 0))
        {
          v21[0] = v24;
          v21[1] = v13;
          v21[2] = v14;
          v20[0] = v29;
          v20[1] = v15;
          v20[2] = v16;
          v18 = _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(v21, v20);
          sub_21A1A368C(&v28, v22);
          sub_21A1A368C(&v23, v22);
          sub_21A1427A8(v33, &qword_27CCFF3A0);
          if (v18)
          {
            return ((v12 ^ v9) & 0x3F) == 0;
          }

          return 0;
        }
      }
    }

LABEL_16:
    sub_21A1A368C(&v28, v22);
    sub_21A1A368C(&v23, v22);
    sub_21A1427A8(v33, &qword_27CCFF3A0);
    return 0;
  }

  if (v32 > 0x3Fu)
  {
    goto LABEL_16;
  }

  if (v23 == v28)
  {
    goto LABEL_10;
  }

LABEL_18:
  v19 = sub_21A2F8394();
  sub_21A1A368C(&v28, v22);
  sub_21A1A368C(&v23, v22);
  sub_21A1427A8(v33, &qword_27CCFF3A0);
  return v19 & 1;
}

uint64_t sub_21A20197C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F5294();
  v51 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v50 = &v43 - v10;
  v11 = type metadata accessor for InstructionSubStepViewModel.PopOver.Kind(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v43 - v17);
  v19 = sub_21A176C98(&qword_27CD01078);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v23 = &v43 - v22;
  v24 = &v43 + *(v21 + 56) - v22;
  sub_21A2021B0(a1, &v43 - v22, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
  sub_21A2021B0(a2, v24, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A2021B0(v23, v18, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
    v37 = *v18;
    v38 = v18[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v37 == *v24 && v38 == *(v24 + 1))
      {
      }

      else
      {
        v40 = sub_21A2F8394();

        if ((v40 & 1) == 0)
        {
LABEL_15:
          sub_21A202218(v23, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
          goto LABEL_16;
        }
      }

      sub_21A202218(v23, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
      v35 = 1;
      return v35 & 1;
    }

LABEL_13:

    sub_21A1427A8(v23, &qword_27CD01078);
LABEL_16:
    v35 = 0;
    return v35 & 1;
  }

  sub_21A2021B0(v23, v15, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
  v25 = *(v15 + 1);
  v26 = *(sub_21A176C98(&qword_27CD01068) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v51 + 8))(&v15[v26], v4);
    goto LABEL_13;
  }

  v27 = *v15;
  v28 = *(v24 + 1);
  v49 = *v24;
  v47 = v27;
  v48 = v28;
  v29 = v51;
  v30 = *(v51 + 32);
  v31 = *(v15 + 2);
  v45 = *(v15 + 1);
  v43 = v31;
  v32 = *(v24 + 2);
  v46 = *(v24 + 1);
  v44 = v32;
  v33 = &v15[v26];
  v34 = v50;
  v30(v50, v33, v4);
  v30(v8, &v24[v26], v4);
  v55[0] = v47;
  v55[1] = v25;
  v57 = v43;
  v56 = v45;
  v52[0] = v49;
  v52[1] = v48;
  v54 = v44;
  v53 = v46;
  LOBYTE(v30) = _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(v55, v52);

  if ((v30 & 1) == 0)
  {
    v41 = *(v29 + 8);
    v41(v8, v4);
    v41(v34, v4);
    goto LABEL_15;
  }

  v35 = MEMORY[0x21CED3CF0](v34, v8);
  v36 = *(v29 + 8);
  v36(v8, v4);
  v36(v34, v4);
  sub_21A202218(v23, type metadata accessor for InstructionSubStepViewModel.PopOver.Kind);
  return v35 & 1;
}

uint64_t sub_21A201E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v23 - v11);
  v13 = sub_21A176C98(&qword_27CD01070);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_21A183960(a1, &v23 - v16, &qword_27CD01060);
  sub_21A183960(a2, &v17[v18], &qword_27CD01060);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21A183960(v17, v12, &qword_27CD01060);
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_21A202218(v12, type metadata accessor for InstructionSubStepViewModel.PopOver);
      goto LABEL_6;
    }

    sub_21A202314(&v17[v18], v8, type metadata accessor for InstructionSubStepViewModel.PopOver);
    if (LOBYTE(v12[1].origin.x))
    {
      if ((LOBYTE(v8[1].origin.x) & 1) == 0)
      {
LABEL_13:
        sub_21A202218(v8, type metadata accessor for InstructionSubStepViewModel.PopOver);
        v20 = 1;
        goto LABEL_14;
      }
    }

    else if ((LOBYTE(v8[1].origin.x) & 1) != 0 || !CGRectEqualToRect(*v12, *v8))
    {
      goto LABEL_13;
    }

    v21 = sub_21A20197C(v12 + *(v4 + 20), v8 + *(v4 + 20));
    sub_21A202218(v8, type metadata accessor for InstructionSubStepViewModel.PopOver);
    v20 = v21 ^ 1;
LABEL_14:
    sub_21A202218(v12, type metadata accessor for InstructionSubStepViewModel.PopOver);
    sub_21A1427A8(v17, &qword_27CD01060);
    return v20 & 1;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21A1427A8(v17, &qword_27CD01070);
    v20 = 1;
    return v20 & 1;
  }

  sub_21A1427A8(v17, &qword_27CD01060);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21A2021B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A202218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A202314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A20237C()
{
  result = qword_27CD01080;
  if (!qword_27CD01080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01080);
  }

  return result;
}

uint64_t sub_21A202558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTimer();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2025FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_21A202660()
{
  result = qword_27CD010C0;
  if (!qword_27CD010C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD010C0);
  }

  return result;
}

__n128 sub_21A2026B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16) + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  result = *(v0 + 24);
  *v3 = result;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u8[8] = v2;
  return result;
}

uint64_t sub_21A202704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 20);
  v7 = a4(0);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1 + v6, a2, v7);
}

uint64_t sub_21A202794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(a4 + 20);
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, a2, a2, v8);
}

uint64_t sub_21A202814()
{
  result = type metadata accessor for SubStepTextElement.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A2028BC()
{
  result = qword_27CD010F8;
  if (!qword_27CD010F8)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27CD010F8);
  }

  return result;
}

uint64_t sub_21A2028F4()
{
  sub_21A2F44D4();
  swift_allocObject();
  sub_21A2F44C4();
  sub_21A176C98(&qword_27CCFF380);
  sub_21A2032CC();
  v1 = sub_21A2F44B4();
  v2 = *(v0 + 112);
  v3 = v1;
  v5 = v4;
  v6 = sub_21A2F4804();
  v7 = sub_21A2F78A4();
  [v2 setObject:v6 forKey:v7];

  return sub_21A180748(v3, v5);
}

uint64_t sub_21A202B3C(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  v5 = sub_21A2F4A24();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v6 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);

  return MEMORY[0x2822009F8](sub_21A202C2C, v2, 0);
}

uint64_t sub_21A202C2C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_21A202CE4;

  return sub_21A14FFA8();
}

uint64_t sub_21A202CE4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_21A202DFC, v2, 0);
}

uint64_t sub_21A202DFC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  (*(v0 + 120))(v2, v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v1;
  sub_21A2C5E54(v2, v0 + 16, isUniquelyReferenced_nonNull_native);
  v8 = *(v6 + 120);
  *(v6 + 120) = v12;
  v9 = *(v6 + 128);
  *(v6 + 128) = 1;

  sub_21A1448F0(v8, v9);
  sub_21A2028F4();

  (*(v5 + 8))(v3, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21A202F20(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_21A203038, v2, 0);
}

uint64_t sub_21A203038()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = (*(v0 + 272) + 56);
    v5 = *(v0 + 352);
    v6 = &unk_27CD01110;
    do
    {
      v9 = *v3;
      v10 = v3[1];
      v11 = v3[2];
      *(v0 + 64) = *(v3 + 48);
      *(v0 + 32) = v10;
      *(v0 + 48) = v11;
      *(v0 + 16) = v9;
      sub_21A199798(v0 + 16, v0 + 128);
      v12 = sub_21A25A2A0(v0 + 16);
      v14 = v13;
      sub_21A192AB0(v0 + 16);
      if (v14)
      {
        v15 = v6;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_21A2B85AC();
        }

        v16 = *(v0 + 264);
        v17 = *(v0 + 272);
        v18 = *(v0 + 200);
        sub_21A1997F4();
        (*(v17 + 32))(v18, *(v5 + 56) + *(v17 + 72) * v12, v16);
        sub_21A2B6530(v12, v5);
        v7 = 0;
        v6 = v15;
      }

      else
      {
        v7 = 1;
      }

      v8 = *(v0 + 200);
      (*v4)(v8, v7, 1, *(v0 + 264));
      sub_21A1427A8(v8, v6);
      v3 = (v3 + 56);
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = *(v0 + 352);
  }

  v19 = *(v0 + 192);

  v20 = *(v19 + 120);
  *(v19 + 120) = v5;
  v21 = *(v19 + 128);
  *(v19 + 128) = 1;
  sub_21A2F5434();
  sub_21A1448F0(v20, v21);
  sub_21A2028F4();

  v22 = *(v0 + 8);
  v23 = *(v0 + 328);

  return v22(v23);
}

uint64_t sub_21A2032A0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

unint64_t sub_21A2032CC()
{
  result = qword_27CD01128;
  if (!qword_27CD01128)
  {
    sub_21A176D98(&qword_27CCFF380);
    sub_21A20338C();
    sub_21A14CD04(&qword_27CD01138, 255, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01128);
  }

  return result;
}

unint64_t sub_21A20338C()
{
  result = qword_27CD01130;
  if (!qword_27CD01130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01130);
  }

  return result;
}

unint64_t sub_21A2033E0()
{
  result = qword_27CD01140;
  if (!qword_27CD01140)
  {
    sub_21A176D98(&qword_27CCFF380);
    sub_21A2034A0();
    sub_21A14CD04(&qword_27CD01150, 255, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01140);
  }

  return result;
}

unint64_t sub_21A2034A0()
{
  result = qword_27CD01148;
  if (!qword_27CD01148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01148);
  }

  return result;
}

uint64_t sub_21A2034F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A14CF10(a1, v4, v5, v6);
}

uint64_t sub_21A2035BC(char a1)
{
  result = 0x6D6172676F6C696BLL;
  switch(a1)
  {
    case 1:
      return 0x736D617267;
    case 2:
      v4 = 1768121700;
      goto LABEL_17;
    case 3:
      v3 = 1953391971;
      goto LABEL_11;
    case 4:
      v3 = 1819044205;
LABEL_11:
      v5 = v3 & 0xFFFF0000FFFFFFFFLL | 0x676900000000;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
    case 5:
      v5 = 0x676F7263696DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
    case 6:
      v4 = 1869504878;
      goto LABEL_17;
    case 7:
      v4 = 1868786032;
LABEL_17:
      result = v4 | 0x6D61726700000000;
      break;
    case 8:
      result = 0x7365636E756FLL;
      break;
    case 9:
      result = 0x73646E756F70;
      break;
    case 10:
      result = 0x73656E6F7473;
      break;
    case 11:
      result = 0x6F5463697274656DLL;
      break;
    case 12:
      result = 0x6E6F5474726F6873;
      break;
    case 13:
      result = 0x737461726163;
      break;
    case 14:
      result = 0x72547365636E756FLL;
      break;
    case 15:
      result = 0x7367756C73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21A203738(uint64_t a1)
{
  v2 = sub_21A204ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203774(uint64_t a1)
{
  v2 = sub_21A204ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2037B0(uint64_t a1)
{
  v2 = sub_21A205218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2037EC(uint64_t a1)
{
  v2 = sub_21A205218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A2077A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A203864(uint64_t a1)
{
  v2 = sub_21A204DD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2038A0(uint64_t a1)
{
  v2 = sub_21A204DD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2038DC(uint64_t a1)
{
  v2 = sub_21A20526C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203918(uint64_t a1)
{
  v2 = sub_21A20526C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203954(uint64_t a1)
{
  v2 = sub_21A2052C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203990(uint64_t a1)
{
  v2 = sub_21A2052C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A2039CC(uint64_t a1)
{
  v2 = sub_21A205314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203A08(uint64_t a1)
{
  v2 = sub_21A205314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203A44(uint64_t a1)
{
  v2 = sub_21A204F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203A80(uint64_t a1)
{
  v2 = sub_21A204F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203ABC(uint64_t a1)
{
  v2 = sub_21A205170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203AF8(uint64_t a1)
{
  v2 = sub_21A205170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203B34(uint64_t a1)
{
  v2 = sub_21A2051C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203B70(uint64_t a1)
{
  v2 = sub_21A2051C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203BAC(uint64_t a1)
{
  v2 = sub_21A20511C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203BE8(uint64_t a1)
{
  v2 = sub_21A20511C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203C24(uint64_t a1)
{
  v2 = sub_21A205074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203C60(uint64_t a1)
{
  v2 = sub_21A205074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203C9C(uint64_t a1)
{
  v2 = sub_21A204E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203CD8(uint64_t a1)
{
  v2 = sub_21A204E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203D14(uint64_t a1)
{
  v2 = sub_21A2050C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203D50(uint64_t a1)
{
  v2 = sub_21A2050C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203D8C(uint64_t a1)
{
  v2 = sub_21A205020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203DC8(uint64_t a1)
{
  v2 = sub_21A205020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203E04(uint64_t a1)
{
  v2 = sub_21A204F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203E40(uint64_t a1)
{
  v2 = sub_21A204F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203E7C(uint64_t a1)
{
  v2 = sub_21A204E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203EB8(uint64_t a1)
{
  v2 = sub_21A204E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A203EF4(uint64_t a1)
{
  v2 = sub_21A204FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A203F30(uint64_t a1)
{
  v2 = sub_21A204FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeightUnit.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_21A176C98(&qword_27CD01158);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v110 = &v67 - v6;
  v7 = sub_21A176C98(&qword_27CD01160);
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v107 = &v67 - v9;
  v10 = sub_21A176C98(&qword_27CD01168);
  v105 = *(v10 - 8);
  v106 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v104 = &v67 - v12;
  v13 = sub_21A176C98(&qword_27CD01170);
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v101 = &v67 - v15;
  v16 = sub_21A176C98(&qword_27CD01178);
  v99 = *(v16 - 8);
  v100 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v98 = &v67 - v18;
  v19 = sub_21A176C98(&qword_27CD01180);
  v96 = *(v19 - 8);
  v97 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v95 = &v67 - v21;
  v94 = sub_21A176C98(&qword_27CD01188);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v22);
  v92 = &v67 - v23;
  v91 = sub_21A176C98(&qword_27CD01190);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v24);
  v89 = &v67 - v25;
  v88 = sub_21A176C98(&qword_27CD01198);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v26);
  v86 = &v67 - v27;
  v85 = sub_21A176C98(&qword_27CD011A0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v28);
  v83 = &v67 - v29;
  v82 = sub_21A176C98(&qword_27CD011A8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v30);
  v80 = &v67 - v31;
  v79 = sub_21A176C98(&qword_27CD011B0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v32);
  v77 = &v67 - v33;
  v76 = sub_21A176C98(&qword_27CD011B8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v34);
  v74 = &v67 - v35;
  v73 = sub_21A176C98(&qword_27CD011C0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v36);
  v71 = &v67 - v37;
  v70 = sub_21A176C98(&qword_27CD011C8);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v38);
  v40 = &v67 - v39;
  v41 = sub_21A176C98(&qword_27CD011D0);
  v68 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v67 - v43;
  v114 = sub_21A176C98(&qword_27CD011D8);
  v45 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v46);
  v48 = &v67 - v47;
  v49 = *v2;
  sub_21A142764(a1, a1[3]);
  sub_21A204DD4();
  v113 = v48;
  sub_21A2F84B4();
  switch(v49)
  {
    case 1:
      v116 = 1;
      sub_21A2052C0();
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v69 + 8);
      v57 = v40;
      v58 = &v102;
      goto LABEL_19;
    case 2:
      v116 = 2;
      sub_21A20526C();
      v60 = v71;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v72 + 8);
      v57 = v60;
      v58 = &v105;
      goto LABEL_19;
    case 3:
      v116 = 3;
      sub_21A205218();
      v61 = v74;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v75 + 8);
      v57 = v61;
      v58 = &v108;
      goto LABEL_19;
    case 4:
      v116 = 4;
      sub_21A2051C4();
      v55 = v77;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v78 + 8);
      v57 = v55;
      v58 = &v111;
      goto LABEL_19;
    case 5:
      v116 = 5;
      sub_21A205170();
      v63 = v80;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v81 + 8);
      v57 = v63;
      v58 = &v114;
      goto LABEL_19;
    case 6:
      v116 = 6;
      sub_21A20511C();
      v64 = v83;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v84 + 8);
      v57 = v64;
      v58 = &v115;
      goto LABEL_19;
    case 7:
      v116 = 7;
      sub_21A2050C8();
      v62 = v86;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v87 + 8);
      v57 = v62;
      v58 = &v117;
      goto LABEL_19;
    case 8:
      v116 = 8;
      sub_21A205074();
      v65 = v89;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v90 + 8);
      v57 = v65;
      v58 = &v118;
      goto LABEL_19;
    case 9:
      v116 = 9;
      sub_21A205020();
      v59 = v92;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v56 = *(v93 + 8);
      v57 = v59;
      v58 = &v119;
LABEL_19:
      v56(v57, *(v58 - 32));
      return (*(v45 + 8))(v50, v51);
    case 10:
      v116 = 10;
      sub_21A204FCC();
      v52 = v95;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v54 = v96;
      v53 = v97;
      goto LABEL_17;
    case 11:
      v116 = 11;
      sub_21A204F78();
      v52 = v98;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v54 = v99;
      v53 = v100;
      goto LABEL_17;
    case 12:
      v116 = 12;
      sub_21A204F24();
      v52 = v101;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v54 = v102;
      v53 = v103;
      goto LABEL_17;
    case 13:
      v116 = 13;
      sub_21A204ED0();
      v52 = v104;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v54 = v105;
      v53 = v106;
      goto LABEL_17;
    case 14:
      v116 = 14;
      sub_21A204E7C();
      v52 = v107;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v54 = v108;
      v53 = v109;
      goto LABEL_17;
    case 15:
      v116 = 15;
      sub_21A204E28();
      v52 = v110;
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      v54 = v111;
      v53 = v112;
LABEL_17:
      (*(v54 + 8))(v52, v53);
      break;
    default:
      v116 = 0;
      sub_21A205314();
      v50 = v113;
      v51 = v114;
      sub_21A2F82A4();
      (*(v68 + 8))(v44, v41);
      break;
  }

  return (*(v45 + 8))(v50, v51);
}

unint64_t sub_21A204DD4()
{
  result = qword_27CD011E0;
  if (!qword_27CD011E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD011E0);
  }

  return result;
}

unint64_t sub_21A204E28()
{
  result = qword_27CD011E8;
  if (!qword_27CD011E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD011E8);
  }

  return result;
}

unint64_t sub_21A204E7C()
{
  result = qword_27CD011F0;
  if (!qword_27CD011F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD011F0);
  }

  return result;
}

unint64_t sub_21A204ED0()
{
  result = qword_27CD011F8;
  if (!qword_27CD011F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD011F8);
  }

  return result;
}

unint64_t sub_21A204F24()
{
  result = qword_27CD01200;
  if (!qword_27CD01200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01200);
  }

  return result;
}

unint64_t sub_21A204F78()
{
  result = qword_27CD01208;
  if (!qword_27CD01208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01208);
  }

  return result;
}

unint64_t sub_21A204FCC()
{
  result = qword_27CD01210;
  if (!qword_27CD01210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01210);
  }

  return result;
}

unint64_t sub_21A205020()
{
  result = qword_27CD01218;
  if (!qword_27CD01218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01218);
  }

  return result;
}

unint64_t sub_21A205074()
{
  result = qword_27CD01220;
  if (!qword_27CD01220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01220);
  }

  return result;
}

unint64_t sub_21A2050C8()
{
  result = qword_27CD01228;
  if (!qword_27CD01228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01228);
  }

  return result;
}

unint64_t sub_21A20511C()
{
  result = qword_27CD01230;
  if (!qword_27CD01230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01230);
  }

  return result;
}

unint64_t sub_21A205170()
{
  result = qword_27CD01238;
  if (!qword_27CD01238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01238);
  }

  return result;
}

unint64_t sub_21A2051C4()
{
  result = qword_27CD01240;
  if (!qword_27CD01240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01240);
  }

  return result;
}

unint64_t sub_21A205218()
{
  result = qword_27CD01248;
  if (!qword_27CD01248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01248);
  }

  return result;
}

unint64_t sub_21A20526C()
{
  result = qword_27CD01250;
  if (!qword_27CD01250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01250);
  }

  return result;
}

unint64_t sub_21A2052C0()
{
  result = qword_27CD01258;
  if (!qword_27CD01258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01258);
  }

  return result;
}

unint64_t sub_21A205314()
{
  result = qword_27CD01260;
  if (!qword_27CD01260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01260);
  }

  return result;
}

uint64_t WeightUnit.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t WeightUnit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v138 = a2;
  v137 = sub_21A176C98(&qword_27CD01268);
  v122 = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v3);
  v133 = &v88 - v4;
  v5 = sub_21A176C98(&qword_27CD01270);
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v132 = &v88 - v7;
  v119 = sub_21A176C98(&qword_27CD01278);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v8);
  v131 = &v88 - v9;
  v117 = sub_21A176C98(&qword_27CD01280);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v10);
  v130 = &v88 - v11;
  v115 = sub_21A176C98(&qword_27CD01288);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v12);
  v129 = &v88 - v13;
  v113 = sub_21A176C98(&qword_27CD01290);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v14);
  v128 = &v88 - v15;
  v111 = sub_21A176C98(&qword_27CD01298);
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v16);
  v127 = &v88 - v17;
  v109 = sub_21A176C98(&qword_27CD012A0);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v18);
  v126 = &v88 - v19;
  v107 = sub_21A176C98(&qword_27CD012A8);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v20);
  v125 = &v88 - v21;
  v104 = sub_21A176C98(&qword_27CD012B0);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v22);
  v136 = &v88 - v23;
  v102 = sub_21A176C98(&qword_27CD012B8);
  v103 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v24);
  v135 = &v88 - v25;
  v101 = sub_21A176C98(&qword_27CD012C0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v26);
  v134 = &v88 - v27;
  v99 = sub_21A176C98(&qword_27CD012C8);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v28);
  v124 = &v88 - v29;
  v97 = sub_21A176C98(&qword_27CD012D0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v30);
  v123 = &v88 - v31;
  v95 = sub_21A176C98(&qword_27CD012D8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v32);
  v34 = &v88 - v33;
  v35 = sub_21A176C98(&qword_27CD012E0);
  v93 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v88 - v37;
  v39 = sub_21A176C98(&qword_27CD012E8);
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v88 - v42;
  v44 = a1[3];
  v140 = a1;
  sub_21A142764(a1, v44);
  sub_21A204DD4();
  v45 = v139;
  sub_21A2F8494();
  if (v45)
  {
LABEL_39:
    v86 = v140;
    return sub_21A142808(v86);
  }

  v90 = v38;
  v89 = v35;
  v91 = v34;
  v46 = v134;
  v47 = v135;
  v48 = v136;
  v92 = 0;
  v50 = v137;
  v49 = v138;
  v139 = v40;
  v51 = v43;
  v52 = sub_21A2F8294();
  if (*(v52 + 16) != 1 || (v53 = *(v52 + 32), v53 == 16))
  {
    v56 = sub_21A2F8064();
    swift_allocError();
    v58 = v57;
    sub_21A176C98(&qword_27CD012F0);
    *v58 = &type metadata for WeightUnit;
    sub_21A2F8204();
    sub_21A2F8054();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    (*(v139 + 8))(v51, v39);
LABEL_38:
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v88 = v52;
  switch(v53)
  {
    case 1:
      v141 = 1;
      sub_21A2052C0();
      v76 = v91;
      v77 = v92;
      sub_21A2F81F4();
      if (v77)
      {
        goto LABEL_37;
      }

      (*(v94 + 8))(v76, v95);
      goto LABEL_42;
    case 2:
      v141 = 2;
      sub_21A20526C();
      v68 = v123;
      v69 = v92;
      sub_21A2F81F4();
      if (v69)
      {
        goto LABEL_37;
      }

      (*(v96 + 8))(v68, v97);
      goto LABEL_42;
    case 3:
      v141 = 3;
      sub_21A205218();
      v72 = v124;
      v73 = v92;
      sub_21A2F81F4();
      if (v73)
      {
        goto LABEL_37;
      }

      (*(v98 + 8))(v72, v99);
      goto LABEL_42;
    case 4:
      v141 = 4;
      sub_21A2051C4();
      v63 = v92;
      sub_21A2F81F4();
      if (v63)
      {
        goto LABEL_37;
      }

      (*(v100 + 8))(v46, v101);
      goto LABEL_42;
    case 5:
      v141 = 5;
      sub_21A205170();
      v78 = v92;
      sub_21A2F81F4();
      if (v78)
      {
        goto LABEL_37;
      }

      (*(v103 + 8))(v47, v102);
      goto LABEL_42;
    case 6:
      v141 = 6;
      sub_21A20511C();
      v81 = v92;
      sub_21A2F81F4();
      if (v81)
      {
        goto LABEL_37;
      }

      (*(v105 + 8))(v48, v104);
      goto LABEL_42;
    case 7:
      v141 = 7;
      sub_21A2050C8();
      v74 = v125;
      v75 = v92;
      sub_21A2F81F4();
      if (v75)
      {
        goto LABEL_37;
      }

      (*(v106 + 8))(v74, v107);
      goto LABEL_42;
    case 8:
      v141 = 8;
      sub_21A205074();
      v84 = v126;
      v85 = v92;
      sub_21A2F81F4();
      if (v85)
      {
        goto LABEL_37;
      }

      (*(v108 + 8))(v84, v109);
      goto LABEL_42;
    case 9:
      v141 = 9;
      sub_21A205020();
      v66 = v127;
      v67 = v92;
      sub_21A2F81F4();
      if (v67)
      {
        goto LABEL_37;
      }

      (*(v110 + 8))(v66, v111);
      goto LABEL_42;
    case 10:
      v141 = 10;
      sub_21A204FCC();
      v82 = v128;
      v83 = v92;
      sub_21A2F81F4();
      if (v83)
      {
        goto LABEL_37;
      }

      (*(v112 + 8))(v82, v113);
      goto LABEL_42;
    case 11:
      v141 = 11;
      sub_21A204F78();
      v61 = v129;
      v62 = v92;
      sub_21A2F81F4();
      if (v62)
      {
        goto LABEL_37;
      }

      (*(v114 + 8))(v61, v115);
      goto LABEL_42;
    case 12:
      v141 = 12;
      sub_21A204F24();
      v64 = v130;
      v65 = v92;
      sub_21A2F81F4();
      if (v65)
      {
        goto LABEL_37;
      }

      (*(v116 + 8))(v64, v117);
      goto LABEL_42;
    case 13:
      v141 = 13;
      sub_21A204ED0();
      v79 = v131;
      v80 = v92;
      sub_21A2F81F4();
      if (v80)
      {
        goto LABEL_37;
      }

      (*(v118 + 8))(v79, v119);
      goto LABEL_42;
    case 14:
      v141 = 14;
      sub_21A204E7C();
      v59 = v132;
      v60 = v92;
      sub_21A2F81F4();
      if (v60)
      {
        goto LABEL_37;
      }

      (*(v120 + 8))(v59, v121);
      goto LABEL_42;
    case 15:
      v141 = 15;
      sub_21A204E28();
      v70 = v133;
      v71 = v92;
      sub_21A2F81F4();
      if (v71)
      {
        goto LABEL_37;
      }

      (*(v122 + 8))(v70, v50);
      goto LABEL_42;
    default:
      v141 = 0;
      sub_21A205314();
      v54 = v90;
      v55 = v92;
      sub_21A2F81F4();
      if (v55)
      {
LABEL_37:
        (*(v139 + 8))(v51, v39);
        goto LABEL_38;
      }

      (*(v93 + 8))(v54, v89);
LABEL_42:
      (*(v139 + 8))(v51, v39);
      swift_unknownObjectRelease();
      v86 = v140;
      *v49 = v53;
      break;
  }

  return sub_21A142808(v86);
}

BOOL sub_21A2064E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_21A20650C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 31;
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

uint64_t sub_21A206540()
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

uint64_t sub_21A206574()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_21A2065A8()
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

unint64_t sub_21A2065E0()
{
  result = qword_27CD012F8;
  if (!qword_27CD012F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD012F8);
  }

  return result;
}

uint64_t sub_21A206674(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21A206704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A2068C8()
{
  result = qword_27CD01300;
  if (!qword_27CD01300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01300);
  }

  return result;
}

unint64_t sub_21A206920()
{
  result = qword_27CD01308;
  if (!qword_27CD01308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01308);
  }

  return result;
}

unint64_t sub_21A206978()
{
  result = qword_27CD01310;
  if (!qword_27CD01310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01310);
  }

  return result;
}

unint64_t sub_21A2069D0()
{
  result = qword_27CD01318;
  if (!qword_27CD01318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01318);
  }

  return result;
}

unint64_t sub_21A206A28()
{
  result = qword_27CD01320;
  if (!qword_27CD01320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01320);
  }

  return result;
}

unint64_t sub_21A206A80()
{
  result = qword_27CD01328;
  if (!qword_27CD01328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01328);
  }

  return result;
}

unint64_t sub_21A206AD8()
{
  result = qword_27CD01330;
  if (!qword_27CD01330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01330);
  }

  return result;
}

unint64_t sub_21A206B30()
{
  result = qword_27CD01338;
  if (!qword_27CD01338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01338);
  }

  return result;
}

unint64_t sub_21A206B88()
{
  result = qword_27CD01340;
  if (!qword_27CD01340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01340);
  }

  return result;
}

unint64_t sub_21A206BE0()
{
  result = qword_27CD01348;
  if (!qword_27CD01348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01348);
  }

  return result;
}

unint64_t sub_21A206C38()
{
  result = qword_27CD01350;
  if (!qword_27CD01350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01350);
  }

  return result;
}

unint64_t sub_21A206C90()
{
  result = qword_27CD01358;
  if (!qword_27CD01358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01358);
  }

  return result;
}

unint64_t sub_21A206CE8()
{
  result = qword_27CD01360;
  if (!qword_27CD01360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01360);
  }

  return result;
}

unint64_t sub_21A206D40()
{
  result = qword_27CD01368;
  if (!qword_27CD01368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01368);
  }

  return result;
}

unint64_t sub_21A206D98()
{
  result = qword_27CD01370;
  if (!qword_27CD01370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01370);
  }

  return result;
}

unint64_t sub_21A206DF0()
{
  result = qword_27CD01378;
  if (!qword_27CD01378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01378);
  }

  return result;
}

unint64_t sub_21A206E48()
{
  result = qword_27CD01380;
  if (!qword_27CD01380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01380);
  }

  return result;
}

unint64_t sub_21A206EA0()
{
  result = qword_27CD01388;
  if (!qword_27CD01388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01388);
  }

  return result;
}

unint64_t sub_21A206EF8()
{
  result = qword_27CD01390;
  if (!qword_27CD01390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01390);
  }

  return result;
}

unint64_t sub_21A206F50()
{
  result = qword_27CD01398;
  if (!qword_27CD01398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01398);
  }

  return result;
}

unint64_t sub_21A206FA8()
{
  result = qword_27CD013A0;
  if (!qword_27CD013A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013A0);
  }

  return result;
}

unint64_t sub_21A207000()
{
  result = qword_27CD013A8;
  if (!qword_27CD013A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013A8);
  }

  return result;
}

unint64_t sub_21A207058()
{
  result = qword_27CD013B0;
  if (!qword_27CD013B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013B0);
  }

  return result;
}

unint64_t sub_21A2070B0()
{
  result = qword_27CD013B8;
  if (!qword_27CD013B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013B8);
  }

  return result;
}

unint64_t sub_21A207108()
{
  result = qword_27CD013C0;
  if (!qword_27CD013C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013C0);
  }

  return result;
}

unint64_t sub_21A207160()
{
  result = qword_27CD013C8;
  if (!qword_27CD013C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013C8);
  }

  return result;
}

unint64_t sub_21A2071B8()
{
  result = qword_27CD013D0;
  if (!qword_27CD013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013D0);
  }

  return result;
}

unint64_t sub_21A207210()
{
  result = qword_27CD013D8;
  if (!qword_27CD013D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013D8);
  }

  return result;
}

unint64_t sub_21A207268()
{
  result = qword_27CD013E0;
  if (!qword_27CD013E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013E0);
  }

  return result;
}

unint64_t sub_21A2072C0()
{
  result = qword_27CD013E8;
  if (!qword_27CD013E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013E8);
  }

  return result;
}

unint64_t sub_21A207318()
{
  result = qword_27CD013F0;
  if (!qword_27CD013F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013F0);
  }

  return result;
}

unint64_t sub_21A207370()
{
  result = qword_27CD013F8;
  if (!qword_27CD013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD013F8);
  }

  return result;
}

unint64_t sub_21A2073C8()
{
  result = qword_27CD01400;
  if (!qword_27CD01400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01400);
  }

  return result;
}

unint64_t sub_21A207420()
{
  result = qword_27CD01408;
  if (!qword_27CD01408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01408);
  }

  return result;
}

unint64_t sub_21A207478()
{
  result = qword_27CD01410;
  if (!qword_27CD01410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01410);
  }

  return result;
}

uint64_t sub_21A2074CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21A2F4C94();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277CFCBB0])
  {
    v11 = 0;
LABEL_33:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v11;
    return result;
  }

  if (v10 == *MEMORY[0x277CFCB78])
  {
    v11 = 1;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCBA8])
  {
    v11 = 2;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB50])
  {
    v11 = 3;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB68])
  {
    v11 = 4;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB60])
  {
    v11 = 5;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCBB8])
  {
    v11 = 6;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCBC0])
  {
    v11 = 7;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB90])
  {
    v11 = 8;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB98])
  {
    v11 = 9;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCBA0])
  {
    v11 = 10;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB58])
  {
    v11 = 11;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCBC8])
  {
    v11 = 12;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB88])
  {
    v11 = 13;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB70])
  {
    v11 = 14;
    goto LABEL_33;
  }

  if (v10 == *MEMORY[0x277CFCB80])
  {
    v11 = 15;
    goto LABEL_33;
  }

  result = sub_21A2F8384();
  __break(1u);
  return result;
}

uint64_t sub_21A2077A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6172676F6C696BLL && a2 == 0xE900000000000073;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D617267 && a2 == 0xE500000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D61726769636564 && a2 == 0xE900000000000073 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61726769746E6563 && a2 == 0xEA0000000000736DLL || (sub_21A2F8394() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617267696C6C696DLL && a2 == 0xEA0000000000736DLL || (sub_21A2F8394() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6172676F7263696DLL && a2 == 0xEA0000000000736DLL || (sub_21A2F8394() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6172676F6E616ELL && a2 == 0xE900000000000073 || (sub_21A2F8394() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6172676F636970 && a2 == 0xE900000000000073 || (sub_21A2F8394() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7365636E756FLL && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73646E756F70 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x73656E6F7473 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F5463697274656DLL && a2 == 0xEA0000000000736ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F5474726F6873 && a2 == 0xE900000000000073 || (sub_21A2F8394() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x737461726163 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x72547365636E756FLL && a2 == 0xEA0000000000796FLL || (sub_21A2F8394() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7367756C73 && a2 == 0xE500000000000000)
  {

    return 15;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_21A207CC0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CookingSessionsPersistenceCommandHandler();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = *a2;
  v14 = sub_21A2F7C64();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_21A2083E4(a1, v8);
  sub_21A2F7C34();
  sub_21A2F5434();
  v15 = sub_21A2F7C24();
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_21A208448(v8, v18 + v16);
  *(v18 + v17) = v13;
  sub_21A199D08(0, 0, v12, &unk_21A303F70, v18);
}

uint64_t sub_21A207EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_21A2F7C34();
  v5[5] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21A207F40, v7, v6);
}

uint64_t sub_21A207F40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v1 + *(type metadata accessor for CookingSessionsPersistenceCommandHandler() + 20));
  v4 = v3[3];
  v5 = v3[4];
  sub_21A142764(v3, v4);
  v0[2] = v2;
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_21A208088;

  return v8(v0 + 2, v4, v5);
}

uint64_t sub_21A208088()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21A2081A8, v3, v2);
}

uint64_t sub_21A2081A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A208208(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = *a1;
  v12 = sub_21A2F7C64();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_21A2083E4(v2, v6);
  sub_21A2F7C34();
  sub_21A2F5434();
  v13 = sub_21A2F7C24();
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21A208448(v6, v16 + v14);
  *(v16 + v15) = v11;
  sub_21A199D08(0, 0, v10, &unk_21A303F78, v16);
}

uint64_t sub_21A2083E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSessionsPersistenceCommandHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A208448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingSessionsPersistenceCommandHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2084AC(uint64_t a1)
{
  v4 = *(type metadata accessor for CookingSessionsPersistenceCommandHandler() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A146070;

  return sub_21A207EA8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21A2085CC(uint64_t a1)
{
  v4 = *(type metadata accessor for CookingSessionsPersistenceCommandHandler() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A207EA8(a1, v6, v7, v1 + v5, v8);
}

void __swiftcall SubStep.init(text:textTimers:textMeasurements:textIngredients:)(CookingKit::SubStep *__return_ptr retstr, Swift::String text, Swift::OpaquePointer textTimers, Swift::OpaquePointer textMeasurements, Swift::OpaquePointer textIngredients)
{
  retstr->text = text;
  retstr->textTimers = textTimers;
  retstr->textMeasurements = textMeasurements;
  retstr->textIngredients = textIngredients;
}

uint64_t SubStep.text.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

unint64_t sub_21A208748()
{
  v1 = 1954047348;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x72676E4974786574;
  }

  if (*v0)
  {
    v1 = 0x656D695474786574;
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

uint64_t sub_21A2087D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A20AB78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A208804(uint64_t a1)
{
  v2 = sub_21A20A520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A208840(uint64_t a1)
{
  v2 = sub_21A20A520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubStep.encode(to:)(void *a1)
{
  v4 = sub_21A176C98(&qword_27CD01418);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v17 = v1[4];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  sub_21A142764(v11, v10);
  sub_21A20A520();
  sub_21A2F84B4();
  LOBYTE(v21) = 0;
  sub_21A2F82E4();
  if (!v2)
  {
    v14 = v17;
    v15 = v18;
    v21 = v19;
    v20 = 1;
    sub_21A176C98(&qword_27CD01428);
    sub_21A20A694(&qword_27CD01430, &qword_27CD01438);
    sub_21A2F8324();
    v21 = v15;
    v20 = 2;
    sub_21A176C98(&qword_27CD01440);
    sub_21A20A760(&qword_27CD01448, sub_21A20A574);
    sub_21A2F8324();
    v21 = v14;
    v20 = 3;
    sub_21A176C98(&qword_27CD01458);
    sub_21A20A5C8(&qword_27CD01460, sub_21A20A640);
    sub_21A2F8324();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t SubStep.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD01470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A20A520();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  LOBYTE(v21) = 0;
  v10 = sub_21A2F8244();
  v19 = v11;
  sub_21A176C98(&qword_27CD01428);
  v20 = 1;
  sub_21A20A694(&qword_27CD01478, &qword_27CD01480);
  sub_21A2F8284();
  v18 = v21;
  sub_21A176C98(&qword_27CD01440);
  v20 = 2;
  sub_21A20A760(&qword_27CD01488, sub_21A20A7D8);
  sub_21A2F8284();
  v17 = v21;
  sub_21A176C98(&qword_27CD01458);
  v20 = 3;
  sub_21A20A5C8(&qword_27CD01498, sub_21A20A82C);
  sub_21A2F8284();
  (*(v6 + 8))(v9, v5);
  v13 = v21;
  v15 = v18;
  v14 = v19;
  *a2 = v10;
  a2[1] = v14;
  v16 = v17;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v13;
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A142808(a1);
}

uint64_t sub_21A208FA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v180 = a2;
  v212 = sub_21A2F4DA4();
  v219 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v3);
  v211 = v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v210 = v176 - v7;
  v8 = sub_21A2F4D64();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v193 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_21A2F4CD4();
  v11 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v12);
  v192 = v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v191 = v176 - v16;
  v17 = sub_21A176C98(&qword_27CD014C0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v208 = v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v200 = v176 - v22;
  v226 = sub_21A2F4F54();
  v218 = *(v226 - 1);
  MEMORY[0x28223BE20](v226, v23);
  v225 = (v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25, v26);
  v224 = (v176 - v27);
  v28 = sub_21A2F4BF4();
  MEMORY[0x28223BE20](v28 - 8, v29);
  v197 = v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v196 = v176 - v33;
  v195 = type metadata accessor for Duration();
  v229 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v34);
  v184 = v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for CountdownTimer();
  v227 = *(v230 - 8);
  MEMORY[0x28223BE20](v230, v36);
  v183 = (v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = sub_21A2F4D54();
  v223 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v38);
  v40 = v176 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v194 = v176 - v43;
  v44 = sub_21A176C98(&qword_27CD014C8);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v216 = (v176 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47, v48);
  v50 = v176 - v49;
  v51 = sub_21A176C98(&qword_27CCFF3A8);
  MEMORY[0x28223BE20](v51 - 8, v52);
  v54 = v176 - v53;
  v232 = sub_21A2F4C24();
  v55 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v56);
  v231 = v176 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_21A2F4F94();
  v58 = *(v199 - 8);
  MEMORY[0x28223BE20](v199, v59);
  v61 = v176 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62, v63);
  v198 = v176 - v64;
  v215 = type metadata accessor for InTextCountdownTimer();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v65);
  v228 = (v176 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67, v68);
  v213 = (v176 - v69);
  v179 = sub_21A2F4BD4();
  v178 = v70;
  v182 = a1;
  v71 = sub_21A2F4BA4();
  v72 = *(v71 + 16);
  v181 = v55;
  if (v72)
  {
    v220 = v61;
    v221 = v50;
    v190 = v40;
    v177 = v11;
    v233[0] = MEMORY[0x277D84F90];
    sub_21A25D65C(0, v72, 0);
    v74 = *(v58 + 16);
    v73 = v58 + 16;
    v205 = v74;
    v75 = (*(v73 + 64) + 32) & ~*(v73 + 64);
    v176[1] = v71;
    v76 = v71 + v75;
    v77 = v233[0];
    v78 = (v227 + 56);
    v204 = (v55 + 8);
    v203 = (v223 + 6);
    v189 = (v223 + 4);
    v202 = *(v73 + 56);
    v188 = (v223 + 2);
    v187 = (v229 + 48);
    v186 = (v223 + 1);
    v201 = (v73 - 8);
    v79 = v199;
    v80 = v198;
    v227 += 56;
    v207 = v54;
    v206 = v73;
    while (1)
    {
      v229 = v77;
      v223 = v72;
      v81 = v205;
      v205(v80, v76, v79);
      v82 = v80;
      v83 = v220;
      v81(v220, v82, v79);
      v84 = *v78;
      v85 = v228;
      v222 = *(v215 + 20);
      v84(v228 + v222, 1, 1, v230);
      v86 = v231;
      v87 = v79;
      sub_21A2F4F84();
      v88 = sub_21A2F4C04();
      v89 = sub_21A2F4C14();
      (*v204)(v86, v232);
      *v85 = v88;
      v85[1] = v89;
      v90 = v221;
      sub_21A2F4F74();
      v91 = v216;
      sub_21A183960(v90, v216, &qword_27CD014C8);
      v92 = v217;
      if ((*v203)(v91, 1, v217) == 1)
      {
        sub_21A1427A8(v90, &qword_27CD014C8);
        v93 = *v201;
        (*v201)(v83, v87);
        v93(v82, v87);
        v94 = v207;
        v84(v207, 1, 1, v230);
        v79 = v87;
        v80 = v82;
      }

      else
      {
        v95 = v194;
        (*v189)(v194, v91, v92);
        v96 = v190;
        (*v188)(v190, v95, v92);
        v97 = v197;
        sub_21A2F4D44();
        v98 = v196;
        sub_21A24F574(v97, v196);
        if ((*v187)(v98, 1, v195) != 1)
        {
          v103 = v98;
          v104 = v184;
          sub_21A20AD64(v103, v184, type metadata accessor for Duration);
          v185 = sub_21A2F4D34();
          v106 = v105;
          v107 = *v186;
          (*v186)(v96, v92);
          v107(v95, v92);
          sub_21A1427A8(v221, &qword_27CD014C8);
          v108 = *v201;
          v79 = v199;
          (*v201)(v220, v199);
          v80 = v198;
          v108(v198, v79);
          v109 = v183;
          *v183 = v185;
          *(v109 + 8) = v106;
          v77 = v229;
          sub_21A20AD64(v104, v109 + *(v230 + 20), type metadata accessor for Duration);
          v94 = v207;
          sub_21A20ADCC(v109, v207);
          v84(v94, 0, 1, v230);
          sub_21A20AE30(v109);
          v101 = v213;
          v102 = v223;
          goto LABEL_9;
        }

        v99 = *v186;
        (*v186)(v96, v92);
        v99(v95, v92);
        sub_21A1427A8(v221, &qword_27CD014C8);
        v100 = *v201;
        v79 = v199;
        (*v201)(v220, v199);
        v80 = v198;
        v100(v198, v79);
        sub_21A1427A8(v98, &qword_27CCFF3D0);
        v94 = v207;
        v84(v207, 1, 1, v230);
      }

      v101 = v213;
      v102 = v223;
      v77 = v229;
LABEL_9:
      v110 = v228;
      sub_21A20ACF4(v94, v228 + v222);
      sub_21A20AD64(v110, v101, type metadata accessor for InTextCountdownTimer);
      v233[0] = v77;
      v112 = *(v77 + 16);
      v111 = *(v77 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_21A25D65C(v111 > 1, v112 + 1, 1);
        v79 = v199;
        v77 = v233[0];
      }

      *(v77 + 16) = v112 + 1;
      sub_21A20AD64(v101, v77 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v112, type metadata accessor for InTextCountdownTimer);
      v76 += v202;
      v72 = v102 - 1;
      v78 = v227;
      if (!v72)
      {

        v11 = v177;
        goto LABEL_14;
      }
    }
  }

  v77 = MEMORY[0x277D84F90];
LABEL_14:
  v113 = v182;
  v114 = sub_21A2F4BC4();
  v115 = *(v114 + 16);
  v116 = v200;
  v229 = v77;
  if (v115)
  {
    v236 = MEMORY[0x277D84F90];
    v117 = v114;
    sub_21A25D854(0, v115, 0);
    result = v117;
    v119 = 0;
    v220 = (v117 + ((*(v218 + 80) + 32) & ~*(v218 + 80)));
    v120 = v236;
    v217 = v218 + 16;
    v216 = (v181 + 8);
    v215 = v11 + 48;
    v214 = v11 + 32;
    v213 = (v11 + 16);
    v207 = (v11 + 8);
    v121 = (v218 + 8);
    v221 = v115;
    v222 = v117;
    while (v119 < *(result + 16))
    {
      v230 = v120;
      v122 = *(v218 + 16);
      v123 = v224;
      v124 = v226;
      v122(v224, &v220[*(v218 + 72) * v119], v226);
      v122(v225, v123, v124);
      v125 = v231;
      sub_21A2F4F44();
      v126 = sub_21A2F4C04();
      v127 = sub_21A2F4C14();
      (*v216)(v125, v232);
      sub_21A2F4F34();
      v128 = v208;
      sub_21A183960(v116, v208, &qword_27CD014C0);
      v129 = v209;
      v130 = (*v215)(v128, 1, v209);
      v227 = v127;
      v228 = v126;
      if (v130 == 1)
      {
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v223 = 0;
        v134 = 0;
        v135 = -1;
      }

      else
      {
        v136 = v191;
        (*v214)(v191, v128, v129);
        v137 = v192;
        (*v213)(v192, v136, v129);
        sub_21A2F4CC4();
        v134 = v138;
        v131 = sub_21A2F4CA4();
        v235 = v139 & 1;
        v140 = v193;
        sub_21A2F4CB4();
        sub_21A2534D0(v140, v233);
        v141 = *v207;
        (*v207)(v137, v129);
        v142 = v233[0];
        v223 = v233[1];
        v135 = v234;
        v132 = v235;
        v143 = v136;
        v116 = v200;
        v141(v143, v129);
        v133 = v142;
      }

      sub_21A1427A8(v116, &qword_27CD014C0);
      v144 = *v121;
      v145 = v226;
      (*v121)(v225, v226);
      v144(v224, v145);
      sub_21A1A3798(0, 0, 0, 0, 0, 255);
      v120 = v230;
      v236 = v230;
      v147 = *(v230 + 16);
      v146 = *(v230 + 24);
      if (v147 >= v146 >> 1)
      {
        sub_21A25D854((v146 > 1), v147 + 1, 1);
        v120 = v236;
      }

      ++v119;
      *(v120 + 16) = v147 + 1;
      v148 = v120 + (v147 << 6);
      v149 = v227;
      *(v148 + 32) = v228;
      *(v148 + 40) = v149;
      *(v148 + 48) = v134;
      *(v148 + 56) = v131;
      *(v148 + 64) = v132;
      result = v222;
      v150 = v223;
      *(v148 + 72) = v133;
      *(v148 + 80) = v150;
      *(v148 + 88) = v135;
      if (v221 == v119)
      {
        v230 = v120;

        v113 = v182;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {

    v230 = MEMORY[0x277D84F90];
LABEL_25:
    v151 = sub_21A2F4BB4();
    v152 = *(v151 + 16);
    v153 = v181;
    if (v152)
    {
      v233[0] = MEMORY[0x277D84F90];
      sub_21A25D834(0, v152, 0);
      v154 = v233[0];
      v155 = *(v219 + 16);
      v156 = (*(v219 + 80) + 32) & ~*(v219 + 80);
      v222 = v151;
      v157 = v151 + v156;
      v225 = *(v219 + 72);
      v226 = v155;
      v219 += 16;
      v223 = (v219 - 8);
      v224 = (v153 + 8);
      do
      {
        v158 = v210;
        v159 = v212;
        v160 = v226;
        (v226)(v210, v157, v212);
        v161 = v211;
        v160(v211, v158, v159);
        v162 = v231;
        sub_21A2F4D94();
        v228 = sub_21A2F4C04();
        v227 = sub_21A2F4C14();
        (*v224)(v162, v232);
        v163 = sub_21A2F4D84();
        v165 = v164;
        v166 = *v223;
        (*v223)(v161, v159);
        v166(v158, v159);
        v233[0] = v154;
        v168 = *(v154 + 16);
        v167 = *(v154 + 24);
        if (v168 >= v167 >> 1)
        {
          sub_21A25D834((v167 > 1), v168 + 1, 1);
          v154 = v233[0];
        }

        *(v154 + 16) = v168 + 1;
        v169 = (v154 + 32 * v168);
        v169[4] = v163;
        v169[5] = v165;
        v170 = v227;
        v169[6] = v228;
        v169[7] = v170;
        v157 += v225;
        --v152;
      }

      while (v152);
      v171 = sub_21A2F4BE4();
      (*(*(v171 - 8) + 8))(v182, v171);
    }

    else
    {

      v172 = sub_21A2F4BE4();
      result = (*(*(v172 - 8) + 8))(v113, v172);
      v154 = MEMORY[0x277D84F90];
    }

    v173 = v180;
    v174 = v178;
    *v180 = v179;
    v173[1] = v174;
    v175 = v230;
    v173[2] = v229;
    v173[3] = v175;
    v173[4] = v154;
  }

  return result;
}

uint64_t _s10CookingKit7SubStepV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_21A2F8394() & 1) == 0 || (sub_21A19AA2C(v2, v6) & 1) == 0 || (sub_21A19B4E0(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_21A19C1F8(v3, v7);
}

unint64_t sub_21A20A520()
{
  result = qword_27CD01420;
  if (!qword_27CD01420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01420);
  }

  return result;
}

unint64_t sub_21A20A574()
{
  result = qword_27CD01450;
  if (!qword_27CD01450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01450);
  }

  return result;
}

uint64_t sub_21A20A5C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD01458);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A20A640()
{
  result = qword_27CD01468;
  if (!qword_27CD01468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01468);
  }

  return result;
}

uint64_t sub_21A20A694(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD01428);
    sub_21A20A71C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A20A71C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InTextCountdownTimer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A20A760(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD01440);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A20A7D8()
{
  result = qword_27CD01490;
  if (!qword_27CD01490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01490);
  }

  return result;
}

unint64_t sub_21A20A82C()
{
  result = qword_27CD014A0;
  if (!qword_27CD014A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014A0);
  }

  return result;
}

uint64_t sub_21A20A880(uint64_t a1, int a2)
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

uint64_t sub_21A20A8C8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LanguagePack.Unit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguagePack.Unit(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A20AA74()
{
  result = qword_27CD014A8;
  if (!qword_27CD014A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014A8);
  }

  return result;
}

unint64_t sub_21A20AACC()
{
  result = qword_27CD014B0;
  if (!qword_27CD014B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014B0);
  }

  return result;
}

unint64_t sub_21A20AB24()
{
  result = qword_27CD014B8;
  if (!qword_27CD014B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014B8);
  }

  return result;
}

uint64_t sub_21A20AB78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695474786574 && a2 == 0xEA00000000007372 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A3193C0 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72676E4974786574 && a2 == 0xEF73746E65696465)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A20ACF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A20AD64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A20ADCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountdownTimer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A20AE30(uint64_t a1)
{
  v2 = type metadata accessor for CountdownTimer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Measurement.unit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_21A1A3840(v2, v3, v4);
}

uint64_t sub_21A20AEB8()
{
  v1 = 0x746E61755178616DLL;
  if (*v0 != 1)
  {
    v1 = 1953066613;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E617571;
  }
}

uint64_t sub_21A20AF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A20B7FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A20AF3C(uint64_t a1)
{
  v2 = sub_21A20B520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A20AF78(uint64_t a1)
{
  v2 = sub_21A20B520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Measurement.encode(to:)(void *a1)
{
  v4 = sub_21A176C98(&qword_27CD014D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - v7;
  v18 = *(v1 + 8);
  v17 = *(v1 + 16);
  v9 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = v9;
  v10 = *(v1 + 40);
  sub_21A142764(a1, a1[3]);
  sub_21A20B520();
  sub_21A2F84B4();
  LOBYTE(v20) = 0;
  sub_21A2F8304();
  if (!v2)
  {
    v12 = v10;
    v13 = v15;
    v14 = v16;
    LOBYTE(v20) = 1;
    sub_21A2F82C4();
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v19 = 2;
    sub_21A1A3840(v14, v13, v12);
    sub_21A20B574();
    sub_21A2F8324();
    sub_21A1A37B8(v20, v21, v22);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Measurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD014E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20[-v8];
  sub_21A142764(a1, a1[3]);
  sub_21A20B520();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  LOBYTE(v21) = 0;
  sub_21A2F8264();
  v11 = v10;
  LOBYTE(v21) = 1;
  v12 = sub_21A2F8224();
  v14 = v13;
  v15 = v12;
  v20[7] = 2;
  sub_21A20B5C8();
  sub_21A2F8284();
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *a2 = v11;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  sub_21A1A3840(v16, v17, v18);
  sub_21A142808(a1);
  return sub_21A1A37B8(v16, v17, v18);
}

BOOL _s10CookingKit11MeasurementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v11 = *(a2 + 16);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }

LABEL_9:
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    sub_21A1A3840(v4, v5, v6);
    sub_21A1A3840(v7, v8, v9);
    v10 = _s10CookingKit15MeasurementUnitO2eeoiySbAC_ACtFZ_0(&v16, &v13);
    sub_21A1A37B8(v13, v14, v15);
    sub_21A1A37B8(v16, v17, v18);
    return v10;
  }

  if (*(a2 + 16))
  {
    goto LABEL_9;
  }

  return 0;
}

unint64_t sub_21A20B520()
{
  result = qword_27CD014D8;
  if (!qword_27CD014D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014D8);
  }

  return result;
}

unint64_t sub_21A20B574()
{
  result = qword_27CD014E0;
  if (!qword_27CD014E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014E0);
  }

  return result;
}

unint64_t sub_21A20B5C8()
{
  result = qword_27CD014F0;
  if (!qword_27CD014F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014F0);
  }

  return result;
}

__n128 sub_21A20B628(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A20B63C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_21A20B684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_21A20B6F8()
{
  result = qword_27CD014F8;
  if (!qword_27CD014F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD014F8);
  }

  return result;
}

unint64_t sub_21A20B750()
{
  result = qword_27CD01500;
  if (!qword_27CD01500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01500);
  }

  return result;
}

unint64_t sub_21A20B7A8()
{
  result = qword_27CD01508;
  if (!qword_27CD01508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01508);
  }

  return result;
}

uint64_t sub_21A20B7FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61755178616DLL && a2 == 0xEB00000000797469 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A20B954()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_21A20B988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A2F8394();

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

uint64_t sub_21A20BA5C(uint64_t a1)
{
  v2 = sub_21A20BC60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A20BA98(uint64_t a1)
{
  v2 = sub_21A20BC60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextRange.encode(to:)(void *a1)
{
  v4 = sub_21A176C98(&qword_27CD01510);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  sub_21A142764(a1, a1[3]);
  sub_21A20BC60();
  sub_21A2F84B4();
  v12 = 0;
  sub_21A2F8314();
  if (!v2)
  {
    v11 = 1;
    sub_21A2F8314();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21A20BC60()
{
  result = qword_27CD01518;
  if (!qword_27CD01518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01518);
  }

  return result;
}

uint64_t TextRange.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x21CED6EE0](*v0);
  return MEMORY[0x21CED6EE0](v1);
}

uint64_t TextRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  return sub_21A2F8474();
}

uint64_t TextRange.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD01520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A20BC60();
  sub_21A2F8494();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_21A2F8274();
    v14 = 1;
    v11 = sub_21A2F8274();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v11;
  }

  return sub_21A142808(a1);
}

uint64_t sub_21A20BF1C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  return sub_21A2F8474();
}

uint64_t sub_21A20BF78()
{
  v1 = v0[1];
  MEMORY[0x21CED6EE0](*v0);
  return MEMORY[0x21CED6EE0](v1);
}

uint64_t sub_21A20BFB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  return sub_21A2F8474();
}

unint64_t sub_21A20C010()
{
  result = qword_27CD01528;
  if (!qword_27CD01528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01528);
  }

  return result;
}

unint64_t sub_21A20C088()
{
  result = qword_27CD01530;
  if (!qword_27CD01530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01530);
  }

  return result;
}

unint64_t sub_21A20C0E0()
{
  result = qword_27CD01538;
  if (!qword_27CD01538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01538);
  }

  return result;
}

unint64_t sub_21A20C138()
{
  result = qword_27CD01540;
  if (!qword_27CD01540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01540);
  }

  return result;
}

uint64_t ExternalRecipeSource.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipeSource.name.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipeSource.publisher.getter()
{
  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipeSource.imageAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalRecipeSource() + 28);

  return sub_21A17FE58(v3, a1);
}

uint64_t sub_21A20C26C(uint64_t a1)
{
  v2 = sub_21A20C628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A20C2A8(uint64_t a1)
{
  v2 = sub_21A20C628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A20C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C6369747261 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A2F8394();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A20C384(uint64_t a1)
{
  v2 = sub_21A20C5D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A20C3C0(uint64_t a1)
{
  v2 = sub_21A20C5D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalRecipeSource.Kind.encode(to:)(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD01548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = sub_21A176C98(&qword_27CD01550);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  sub_21A142764(a1, a1[3]);
  sub_21A20C5D4();
  sub_21A2F84B4();
  sub_21A20C628();
  sub_21A2F82A4();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_21A20C5D4()
{
  result = qword_27CD01558;
  if (!qword_27CD01558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01558);
  }

  return result;
}

unint64_t sub_21A20C628()
{
  result = qword_27CD01560;
  if (!qword_27CD01560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01560);
  }

  return result;
}

uint64_t ExternalRecipeSource.Kind.hashValue.getter()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  return sub_21A2F8474();
}

uint64_t ExternalRecipeSource.Kind.init(from:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD01568);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - v5;
  v7 = sub_21A176C98(&qword_27CD01570);
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  sub_21A142764(a1, a1[3]);
  sub_21A20C5D4();
  sub_21A2F8494();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_21A2F8294();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if (sub_21A2064E0() || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_21A2F8064();
    swift_allocError();
    v18 = v17;
    sub_21A176C98(&qword_27CD012F0);
    *v18 = &type metadata for ExternalRecipeSource.Kind;
    sub_21A2F8204();
    sub_21A2F8054();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return sub_21A142808(v20);
  }

  sub_21A20C628();
  sub_21A2F81F4();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return sub_21A142808(v20);
}

uint64_t sub_21A20CA4C(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD01548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = sub_21A176C98(&qword_27CD01550);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  sub_21A142764(a1, a1[3]);
  sub_21A20C5D4();
  sub_21A2F84B4();
  sub_21A20C628();
  sub_21A2F82A4();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21A20CC28()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656873696C627570;
  v4 = 0x7373416567616D69;
  if (v1 != 3)
  {
    v4 = 1684957547;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_21A20CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A20DE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A20CCE4(uint64_t a1)
{
  v2 = sub_21A20D770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A20CD20(uint64_t a1)
{
  v2 = sub_21A20D770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalRecipeSource.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD01578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  sub_21A142764(a1, a1[3]);
  sub_21A20D770();
  sub_21A2F84B4();
  v9[15] = 0;
  sub_21A2F82E4();
  if (!v1)
  {
    v9[14] = 1;
    sub_21A2F82E4();
    v9[13] = 2;
    sub_21A2F82B4();
    type metadata accessor for ExternalRecipeSource();
    v9[12] = 3;
    type metadata accessor for ImageAsset(0);
    sub_21A20D818(&qword_27CD01588);
    sub_21A2F82D4();
    v9[11] = 4;
    sub_21A20D7C4();
    sub_21A2F8324();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExternalRecipeSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v27 - v6;
  v8 = sub_21A176C98(&qword_27CD01598);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for ExternalRecipeSource();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 36);
  v18 = type metadata accessor for ImageAsset(0);
  v19 = *(*(v18 - 8) + 56);
  v31 = v17;
  v19(v15 + v17, 1, 1, v18);
  sub_21A142764(a1, a1[3]);
  sub_21A20D770();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
    return sub_21A1427A8(v15 + v31, &qword_27CCFEDC0);
  }

  else
  {
    v20 = v29;
    v36 = 0;
    *v15 = sub_21A2F8244();
    v15[1] = v21;
    v27[3] = v21;
    v35 = 1;
    v15[2] = sub_21A2F8244();
    v15[3] = v22;
    v34 = 2;
    v27[2] = 0;
    v23 = sub_21A2F8214();
    v24 = v31;
    v15[4] = v23;
    v15[5] = v25;
    v27[1] = v25;
    v33 = 3;
    sub_21A20D818(&qword_27CD015A0);
    sub_21A2F8234();
    sub_21A20D85C(v7, v15 + v24);
    v32 = 4;
    sub_21A20D8CC();
    sub_21A2F8284();
    (*(v20 + 8))(v11, v30);
    sub_21A20D920(v15, v28);
    sub_21A142808(a1);
    return sub_21A20DFFC(v15, type metadata accessor for ExternalRecipeSource);
  }
}

BOOL _s10CookingKit20ExternalRecipeSourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_21A176C98(&qword_27CCFEE00);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21A2F8394() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18 || (a1[4] != a2[4] || v17 != v18) && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(type metadata accessor for ExternalRecipeSource() + 28);
  v20 = *(v13 + 48);
  sub_21A17FE58(a1 + v19, v16);
  sub_21A17FE58(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_21A1427A8(v16, &qword_27CCFEDC0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_21A17FE58(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_21A20DFFC(v12, type metadata accessor for ImageAsset);
LABEL_19:
    sub_21A1427A8(v16, &qword_27CCFEE00);
    return 0;
  }

  sub_21A1BC3A0(&v16[v20], v8);
  v23 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_21A20DFFC(v8, type metadata accessor for ImageAsset);
  sub_21A20DFFC(v12, type metadata accessor for ImageAsset);
  sub_21A1427A8(v16, &qword_27CCFEDC0);
  return v23;
}

unint64_t sub_21A20D770()
{
  result = qword_27CD01580;
  if (!qword_27CD01580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01580);
  }

  return result;
}

unint64_t sub_21A20D7C4()
{
  result = qword_27CD01590;
  if (!qword_27CD01590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01590);
  }

  return result;
}

uint64_t sub_21A20D818(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageAsset(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A20D85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A20D8CC()
{
  result = qword_27CD015A8;
  if (!qword_27CD015A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015A8);
  }

  return result;
}

uint64_t sub_21A20D920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRecipeSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A20D988()
{
  result = qword_27CD015B0;
  if (!qword_27CD015B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguagePack.Fraction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguagePack.Fraction(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A20DB88()
{
  result = qword_27CD015B8;
  if (!qword_27CD015B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015B8);
  }

  return result;
}

unint64_t sub_21A20DBE0()
{
  result = qword_27CD015C0;
  if (!qword_27CD015C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015C0);
  }

  return result;
}

unint64_t sub_21A20DC38()
{
  result = qword_27CD015C8;
  if (!qword_27CD015C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015C8);
  }

  return result;
}

unint64_t sub_21A20DC90()
{
  result = qword_27CD015D0;
  if (!qword_27CD015D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015D0);
  }

  return result;
}

unint64_t sub_21A20DCE8()
{
  result = qword_27CD015D8;
  if (!qword_27CD015D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015D8);
  }

  return result;
}

unint64_t sub_21A20DD40()
{
  result = qword_27CD015E0;
  if (!qword_27CD015E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015E0);
  }

  return result;
}

unint64_t sub_21A20DD98()
{
  result = qword_27CD015E8;
  if (!qword_27CD015E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015E8);
  }

  return result;
}

unint64_t sub_21A20DDF0()
{
  result = qword_27CD015F0;
  if (!qword_27CD015F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015F0);
  }

  return result;
}

uint64_t sub_21A20DE44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465 || (sub_21A2F8394() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21A2F8394();

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

uint64_t sub_21A20DFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AdPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

unint64_t sub_21A20E100()
{
  result = qword_27CD015F8;
  if (!qword_27CD015F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD015F8);
  }

  return result;
}

void sub_21A20E1B8()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v2 = [v0 resolvedColorWithTraitCollection_];

  qword_27CD01600 = v2;
}

void sub_21A20E258(uint64_t a1)
{
  v1 = [objc_opt_self() colorsForImage_];
  if (v1)
  {
    v2 = v1;
    sub_21A1552C4();
    v3 = sub_21A2F7B24();

    if (v3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21A2F8164())
    {
      v5 = 0;
      v17 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CED6AE0](v5, v3);
        }

        else
        {
          if (v5 >= *(v17 + 16))
          {
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 _luminance];
        v10 = v9;
        v11 = objc_opt_self();
        v12 = &selRef_blackColor;
        if (v10 <= 0.7)
        {
          v12 = &selRef_whiteColor;
        }

        v13 = [v11 *v12];
        v14 = [objc_opt_self() whiteColor];
        v15 = sub_21A2F7E74();

        if (v15)
        {
          goto LABEL_21;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    if (qword_27CCFE810 != -1)
    {
      swift_once();
    }

    qword_27CD01600;
LABEL_21:
    if (!i)
    {
      goto LABEL_25;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CED6AE0](0, v3);
      goto LABEL_25;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v3 + 32);
LABEL_25:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t dispatch thunk of ImageLoaderType.image(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A1C0AD0;

  return v9(a1, a2, a3);
}

uint64_t sub_21A20E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_21A20E604, 0, 0);
}

uint64_t sub_21A20E604()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  sub_21A142764(v1 + 2, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_21A2F4794();
  v0[9] = v5;
  v6 = sub_21A2100F4();
  v0[10] = v6;
  *v4 = v0;
  v4[1] = sub_21A20E760;
  v7 = v0[7];

  return v9(v0 + 2, v7, v5, v6, v2, v3);
}

uint64_t sub_21A20E760()
{

  return MEMORY[0x2822009F8](sub_21A20E85C, 0, 0);
}

uint64_t sub_21A20E85C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(*(v0 + 48) + 56);
    v2 = *(v0 + 56);
    *(swift_task_alloc() + 16) = v2;
    os_unfair_lock_lock((v3 + 24));
    sub_21A2101A0((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));

    **(v0 + 40) = v1;
    v15 = *(v0 + 8);
LABEL_12:

    return v15();
  }

  if (sub_21A2F4684())
  {
    sub_21A2F4754();
    v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = sub_21A2F78A4();

    v6 = [v4 initWithContentsOfFile_];
    *(v0 + 88) = v6;

    if (!v6)
    {
      sub_21A21014C();
      swift_allocError();
      swift_willThrow();
      v15 = *(v0 + 8);
      goto LABEL_12;
    }

    v7 = *(v0 + 48);
    v8 = v7[5];
    v9 = v7[6];
    sub_21A142764(v7 + 2, v8);
    *(v0 + 32) = v6;
    v18 = (*(v9 + 24) + **(v9 + 24));
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_21A20EBA0;
    v11 = *(v0 + 72);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);

    return v18(v0 + 32, v13, v11, v12, v8, v9);
  }

  else
  {
    *(v0 + 104) = [objc_opt_self() sharedSession];
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_21A20ECC0;
    v17 = *(v0 + 56);

    return MEMORY[0x28211ED00](v17, 0);
  }
}

uint64_t sub_21A20EBA0()
{

  return MEMORY[0x2822009F8](sub_21A20EC9C, 0, 0);
}

uint64_t sub_21A20ECC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = v3;

  if (v3)
  {
    v7 = sub_21A20F178;
  }

  else
  {
    v8 = v6[13];

    v7 = sub_21A20EDF0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21A20EDF0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_21A1806F4(v2, v1);
  v4 = sub_21A2F4804();
  v5 = [v3 initWithData_];
  v0[18] = v5;

  sub_21A180748(v2, v1);
  if (v5)
  {
    v6 = v0[6];
    v7 = v6[5];
    v8 = v6[6];
    sub_21A142764(v6 + 2, v7);
    v0[3] = v5;
    v17 = (*(v8 + 24) + **(v8 + 24));
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_21A20F00C;
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[7];

    return v17(v0 + 3, v12, v10, v11, v7, v8);
  }

  else
  {
    v14 = v0[15];
    v15 = v0[16];
    sub_21A21014C();
    swift_allocError();
    swift_willThrow();
    sub_21A180748(v14, v15);
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_21A20F00C()
{

  return MEMORY[0x2822009F8](sub_21A20F108, 0, 0);
}

uint64_t sub_21A20F108()
{
  sub_21A180748(*(v0 + 120), *(v0 + 128));
  **(v0 + 40) = *(v0 + 144);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A20F178()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_21A20F1DC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_21A25A718(a2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A2B8B00();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = sub_21A2F4794();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);

    sub_21A2B6810(v5, v7);
    *a1 = v7;
  }
}

uint64_t sub_21A20F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_21A21001C(a3, v23 - v10);
  v12 = sub_21A2F7C64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21A21008C(v11);
  }

  else
  {
    sub_21A2F7C54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21A2F7BD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_21A2F7964() + 32;
      sub_21A13DAA4();

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_21A21008C(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A21008C(a3);
  sub_21A13DAA4();
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21A20F520(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for ImageResource();
  v2[6] = swift_task_alloc();
  v3 = sub_21A2F4794();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A20F610, 0, 0);
}

uint64_t sub_21A20F610()
{
  v14 = v0;
  sub_21A20FEA4(v0[3], v0[6]);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v5 = *v0[6];

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v1 = v0[9];
    v2 = v0[4];
    (*(v0[8] + 32))(v1, v0[6], v0[7]);
    v3 = *(v2 + 56);
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    os_unfair_lock_lock((v3 + 24));
    sub_21A20FF08((v3 + 16), &v13);
    os_unfair_lock_unlock((v3 + 24));
    v8 = v13;
    v0[10] = v13;

    v9 = swift_task_alloc();
    v0[11] = v9;
    v10 = sub_21A13DAA4();
    v11 = sub_21A176C98(&qword_27CCFFBB8);
    *v9 = v0;
    v9[1] = sub_21A20F7E8;
    v12 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 2, v8, v10, v11, v12);
  }
}

uint64_t sub_21A20F7E8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21A20F9A0;
  }

  else
  {
    v2 = sub_21A20F8FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A20F8FC()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[2];
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_21A20F9A0()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A20FA3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  v6 = sub_21A2F4794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v23 - v12;
  v14 = *a1;
  if (*(*a1 + 16) && (v15 = sub_21A25A718(a2), (v16 & 1) != 0))
  {
    *v25 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v18 = sub_21A2F7C64();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = v24;
    (*(v7 + 32))(&v20[v19], &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    v21 = sub_21A20F2A8(0, 0, v13, &unk_21A304C50, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a1;
    result = sub_21A2C5FC8(v21, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v26;
    *v25 = v21;
  }

  return result;
}

uint64_t sub_21A20FCA8()
{
  sub_21A142808(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21A20FD0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A20FDA4;

  return sub_21A20F520(a1);
}

uint64_t sub_21A20FDA4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21A20FEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A20FF24(uint64_t a1)
{
  v4 = *(sub_21A2F4794() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A20E5E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21A21001C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEB08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A21008C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEB08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A2100F4()
{
  result = qword_27CCFF318;
  if (!qword_27CCFF318)
  {
    sub_21A2F4794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF318);
  }

  return result;
}

unint64_t sub_21A21014C()
{
  result = qword_27CD01608;
  if (!qword_27CD01608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01608);
  }

  return result;
}

unint64_t sub_21A2101D0()
{
  result = qword_27CD01610;
  if (!qword_27CD01610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD01610);
  }

  return result;
}

uint64_t Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  Cache.init()();
  return v0;
}

uint64_t Cache.init()()
{
  swift_defaultActor_initialize();
  sub_21A2F5344();
  *(v0 + 112) = sub_21A2F5324();
  return v0;
}

uint64_t sub_21A2102E8()
{
  sub_21A2F81D4();
  sub_21A2F5354();
  return sub_21A210330(v1);
}

uint64_t sub_21A210384()
{
  sub_21A2F81D4();
  sub_21A2F5314();
  return sub_21A210330(v1);
}

uint64_t Cache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Cache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21A210464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_21A21048C, v6, 0);
}

uint64_t sub_21A21048C()
{
  sub_21A2102E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A2104F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_21A21051C, v6, 0);
}

uint64_t sub_21A21051C()
{
  sub_21A210384();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of CacheType.value<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21A146070;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CacheType.set<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21A145E2C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for CookingModePopoverTipViewModifier()
{
  result = qword_27CD016B8;
  if (!qword_27CD016B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A21096C()
{
  sub_21A210A00();
  if (v0 <= 0x3F)
  {
    sub_21A210A80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A210A00()
{
  if (!qword_27CD016C8)
  {
    type metadata accessor for CookingModeTipState(255);
    sub_21A2121F4(&qword_27CD016D0);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD016C8);
    }
  }
}

void sub_21A210A80()
{
  if (!qword_27CD016D8)
  {
    v0 = sub_21A2F7054();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD016D8);
    }
  }
}

uint64_t sub_21A210AE0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_21A2F6374();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v62 = (v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CookingModePopoverTipViewModifier();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v49[0] = v8;
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21A176C98(&qword_27CD016E8);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v10);
  v50 = v49 - v11;
  v61 = sub_21A176C98(&qword_27CD016F0);
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v12);
  v51 = v49 - v13;
  v14 = sub_21A176C98(&qword_27CD016F8);
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v55 = v49 - v16;
  v58 = sub_21A176C98(&qword_27CD01700);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v17);
  v54 = v49 - v18;
  sub_21A2120BC(v1, v9);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_21A212120(v9, v20 + v19);
  v21 = sub_21A176C98(&qword_27CD01708);
  v22 = sub_21A1772F8(&qword_27CD01710, &qword_27CD01708);
  sub_21A2F6D54();

  v49[1] = sub_21A176C98(&qword_27CD016B0);
  v23 = v1;
  v24 = sub_21A2F7714();
  swift_getKeyPath();
  v70 = v24;
  sub_21A2121F4(&qword_27CD01718);
  sub_21A2F5094();
  v25 = v52;

  v26 = *(v24 + 16);

  LOBYTE(v66) = v26;
  sub_21A2120BC(v23, v9);
  v27 = swift_allocObject();
  sub_21A212120(v9, v27 + v19);
  v70 = v21;
  v71 = v22;
  v28 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277D839B0];
  v31 = v50;
  sub_21A2F6E74();

  (*(v53 + 8))(v31, v25);
  v32 = sub_21A2F7714();
  swift_getKeyPath();
  v70 = v32;
  sub_21A2F5094();

  LODWORD(v31) = *(v32 + 16);

  if (v31 == 1)
  {
    v33 = sub_21A2122FC();
    v34 = &type metadata for CookingModeTip;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
  }

  v73 = v34;
  v74 = v33;
  v35 = sub_21A2F7074();
  v37 = v62;
  v36 = v63;
  *v62 = v35;
  v38 = v64;
  (*(v36 + 104))(v37, *MEMORY[0x277CDE248], v64);
  v66 = v25;
  v67 = v30;
  v68 = OpaqueTypeConformance2;
  v69 = MEMORY[0x277D839C8];
  v48 = swift_getOpaqueTypeConformance2();
  v39 = v61;
  v40 = v55;
  sub_21A2F69F4();
  (*(v36 + 8))(v37, v38);
  (*(v57 + 8))(v28, v39);
  sub_21A212294(&v70);
  v70 = v39;
  v71 = v48;
  swift_getOpaqueTypeConformance2();
  v41 = v54;
  v42 = v60;
  sub_21A2F6A04();
  (*(v59 + 8))(v40, v42);
  v43 = sub_21A2F6F64();
  KeyPath = swift_getKeyPath();
  v45 = v65;
  (*(v56 + 32))(v65, v41, v58);
  result = sub_21A176C98(&qword_27CD01728);
  v47 = (v45 + *(result + 36));
  *v47 = KeyPath;
  v47[1] = v43;
  return result;
}

uint64_t sub_21A2112C8()
{
  type metadata accessor for CookingModePopoverTipViewModifier();
  sub_21A176C98(&qword_27CD01740);
  sub_21A2F7034();
  return sub_21A211344();
}

uint64_t sub_21A211344()
{
  sub_21A176C98(&qword_27CD016B0);
  v0 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2121F4(&qword_27CD01718);
  sub_21A2F5094();

  v1 = *(v0 + 16);

  if (v1 == 1 && (type metadata accessor for CookingModePopoverTipViewModifier(), sub_21A176C98(&qword_27CD01740), sub_21A2F7024(), v6 == 1) && (sub_21A2F7024(), (v6 & 1) == 0))
  {
    sub_21A2F7034();
    if (qword_27CCFE818 != -1)
    {
      swift_once();
    }

    v4 = sub_21A176C98(&qword_27CD01748);
    sub_21A177CBC(v4, qword_27CD23D30);
    sub_21A2F54D4();

    if (qword_27CCFE820 != -1)
    {
      swift_once();
    }

    v5 = sub_21A176C98(&qword_27CD01738);
    sub_21A177CBC(v5, qword_27CD23D48);
    sub_21A2F54E4();
    return sub_21A2F54B4();
  }

  else
  {
    if (qword_27CCFE820 != -1)
    {
      swift_once();
    }

    v2 = sub_21A176C98(&qword_27CD01738);
    sub_21A177CBC(v2, qword_27CD23D48);
    return sub_21A2F54E4();
  }
}

uint64_t sub_21A211608()
{
  v0 = sub_21A176C98(&qword_27CD01748);
  sub_21A177DCC(v0, qword_27CD23D30);
  sub_21A177CBC(v0, qword_27CD23D30);
  return sub_21A2F54C4();
}

uint64_t sub_21A211684()
{
  v0 = sub_21A176C98(&qword_27CD01738);
  sub_21A177DCC(v0, qword_27CD23D48);
  sub_21A177CBC(v0, qword_27CD23D48);
  return sub_21A2F54F4();
}

uint64_t sub_21A211730@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD01760);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13[-v5];
  v7 = sub_21A176C98(&qword_27CD01768);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13[-v10];
  sub_21A1772F8(&qword_27CD01770, &qword_27CD01768);
  sub_21A2F4644();
  v13[15] = 1;
  sub_21A2F4634();
  a1[3] = sub_21A176C98(&qword_27CD01778);
  a1[4] = sub_21A212350();
  sub_21A156050(a1);
  sub_21A1772F8(&qword_27CD01798, &qword_27CD01760);
  sub_21A2F4624();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21A211998()
{
  sub_21A2F5F54();
  if (qword_27CCFE760 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD23BB8;
  return sub_21A2F69A4();
}

uint64_t sub_21A211AE0()
{
  if (qword_27CCFE760 != -1)
  {
    swift_once();
  }

  v0 = qword_27CD23BB8;

  return sub_21A2F6FE4();
}

uint64_t sub_21A211B68()
{
  v0 = sub_21A176C98(&qword_27CD01738);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - v3;
  v5 = sub_21A2F5494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CCFE820 != -1)
  {
    swift_once();
  }

  v10 = sub_21A177CBC(v0, qword_27CD23D48);
  (*(v1 + 16))(v4, v10, v0);
  sub_21A2F54A4();
  sub_21A2F5424();
  (*(v6 + 8))(v9, v5);
  v11 = sub_21A2F5434();

  return v11;
}

uint64_t sub_21A211D64()
{
  v0 = sub_21A176C98(&qword_27CD01750);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v19 - v3;
  v5 = sub_21A2F5474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A176C98(&qword_27CD01758);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  sub_21A2F5484();
  v15 = MEMORY[0x277CE19F0];
  MEMORY[0x21CED3EE0](v9, v5, MEMORY[0x277CE19F0]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CED3F00](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_21A2F5454();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_21A212008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21A2122FC();
  result = MEMORY[0x21CED3E90](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_21A21204C()
{
  result = qword_27CD016E0;
  if (!qword_27CD016E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD016E0);
  }

  return result;
}

uint64_t sub_21A2120BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingModePopoverTipViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A212120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingModePopoverTipViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}